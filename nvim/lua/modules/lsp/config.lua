local config = {}

function config.nvim_lspconfig()
  -- 诊断样式定制
  vim.diagnostic.config(
  {
    -- 诊断的虚拟文本
    virtual_text = {
    -- 显示的前缀，可选项：'●', '▎', 'x'
    -- 默认是一个小方块，不是很好看，所以这里改了
    prefix = "●",
    -- 是否总是显示前缀？是的
    source = "always"
    },
    float = {
    -- 是否显示诊断来源？是的
    source = "always"
    },
    -- 在插入模式下是否显示诊断？不要
    update_in_insert = false
  }
  )
end

function config.rust_tools()
  local opts = {
    tools = { -- rust-tools options
      autoSetHints = true,
      hover_with_actions = true,
      inlay_hints = {
        show_parameter_hints = true,
        parameter_hints_prefix = "<-",
        other_hints_prefix = "=>",
        typeHints = true,
      },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
      -- on_attach is a callback called when the language server attachs to the buffer
      -- on_attach = on_attach,
      settings = {
        -- to enable rust-analyzer settings visit:
        -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
        ["rust-analyzer"] = {
          -- enable clippy on save
          checkOnSave = {
            command = "clippy"
          },
        }
      }
    },
  }

  --require('rust-tools').setup(opts)
  require('rust-tools').setup({})
end

function config.nvim_lsp_installer()
  local lsp_installer_servers = require("nvim-lsp-installer.servers")
  -- 使用 cmp_nvim_lsp 代替内置 omnifunc，获得更强的补全体验
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

  local servers = {
    -- 语言服务器名称：配置选项
    sumneko_lua = require("lsp.sumneko_lua"),
    pyright = require("lsp.pyright"),
    -- tsserver = require("lsp.tsserver"),
    -- html = require("lsp.html"),
    -- cssls = require("lsp.cssls"),
    gopls = require("lsp.gopls"),
    -- jsonls = require("lsp.jsonls"),
    zeta_note = require("lsp.zeta_note"),
    --sqls = require("lsp.sqls"),
    -- vuels = require("lsp.vuels")
    clangd = require("lsp.clangd"),
    -- rust_analyzer = require("lsp.rust_analyzer"),
  }

  --这里是 LSP 服务启动后的按键加载
  local function attach(_, bufnr)
    vim.keybinds = {
      gmap = vim.api.nvim_set_keymap,
      bmap = vim.api.nvim_buf_set_keymap,
      dgmap = vim.api.nvim_del_keymap,
      dbmap = vim.api.nvim_buf_del_keymap,
      opts = {noremap = true, silent = true}
    }

    --跳转到定义（代替内置 LSP 的窗口, telescope 插件让跳转定义更方便）
    vim.keybinds.bmap(bufnr, "n", "gd", "<cmd>Telescope lsp_definitions theme=dropdown<CR>", vim.keybinds.opts)
    -- 列出光标下所有引用（代替内置 LSP 的窗口，telescope 插件让查看引用更方便）
    vim.keybinds.bmap(bufnr, "n", "gr", "<cmd>Telescope lsp_references theme=dropdown<CR>", vim.keybinds.opts)
    -- 工作区诊断（代替内置 LSP 的窗口，telescope 插件让工作区诊断更方便）
    vim.keybinds.bmap(bufnr, "n", "go", "<cmd>Telescope diagnostics theme=dropdown<CR>", vim.keybinds.opts)
    -- 显示代码可用操作（代替内置 LSP 的窗口，telescope 插件让代码行为更方便）
    vim.keybinds.bmap(bufnr, "n", "<leader>ca", "<cmd>Telescope lsp_code_actions theme=dropdown<CR>", vim.keybinds.opts)
    -- 变量重命名（代替内置 LSP 的窗口，Lspsaga 让变量重命名更美观）
    vim.keybinds.bmap(bufnr, "n", "<leader>cn", "<cmd>Lspsaga rename<CR>", vim.keybinds.opts)
    -- 查看帮助信息（代替内置 LSP 的窗口，Lspsaga 让查看帮助信息更美观）
    vim.keybinds.bmap(bufnr, "n", "gh", "<cmd>Lspsaga hover_doc<CR>", vim.keybinds.opts)
    -- 跳转到上一个问题（代替内置 LSP 的窗口，Lspsaga 让跳转问题更美观）
    vim.keybinds.bmap(bufnr, "n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", vim.keybinds.opts)
    -- 跳转到下一个问题（代替内置 LSP 的窗口，Lspsaga 让跳转问题更美观）
    vim.keybinds.bmap(bufnr, "n", "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>", vim.keybinds.opts)
    -- 悬浮窗口上翻页，由 Lspsaga 提供
    vim.keybinds.bmap(
      bufnr,
      "n",
      "<C-u>",
      "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>",
      vim.keybinds.opts
    )
    -- 悬浮窗口下翻页，由 Lspsaga 提供
    vim.keybinds.bmap(
      bufnr,
      "n",
      "<C-d>",
      "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>",
      vim.keybinds.opts
    )
  end

  -- 自动安装或启动 LanguageServers
  for server_name, server_options in pairs(servers) do
    local server_available, server = lsp_installer_servers.get_server(server_name)
    -- debug
    --print(server_name, server_available)

    -- 判断服务是否可用
    if server_available then
      -- 判断服务是否准备就绪，若就绪则启动服务
      server:on_ready(
        function()
          -- keybind
          server_options.on_attach = attach
          -- options config
          server_options.flags = {
            debounce_text_changes = 150
          }

          -- 代替内置 omnifunc
          server_options.capabilities = capabilities

          -- 启动服务
          server:setup(server_options)
        end
      )
      -- 如果服务器没有下载，则通过 notify 插件弹出下载提示
      if not server:is_installed() then
        vim.notify("Install Language Server : " .. server_name, "WARN", {title = "Language Servers"})
        server:install()
      end
    end

  end
end

function config.lspsaga()
  require("lspsaga").setup(
    {
      -- 提示边框样式：round、single、double
      border_style = "round",
      error_sign = " ",
      warn_sign = " ",
      hint_sign = " ",
      infor_sign = " ",
      diagnostic_header_icon = " ",
      -- 正在写入的行提示
      code_action_icon = " ",
      code_action_prompt = {
        -- 显示写入行提示
        -- 如果为 true ，则写代码时会在左侧行号栏中显示你所定义的图标
        enable = false,
        sign = true,
        sign_priority = 40,
        virtual_text = true
      },
      -- 快捷键配置
      code_action_keys = {
        quit = "<Esc>",
        exec = "<CR>"
      },
      rename_action_keys = {
        quit = "<Esc>",
        exec = "<CR>"
      }
    }
  )
end

function config.fidget()
  require("fidget").setup({
    window = {
      -- 窗口全透明，不建议修改这个选项
      -- 否则主题透明时将会出现一大片黑块
      blend = 0,
    }
  })
end

function config.lsp_signature()
  require("lsp_signature").setup(
    {
      bind = true,
      -- 边框样式
      handler_opts = {
        -- double、rounded、single、shadow、none
        border = "rounded"
      },
      -- 自动触发
      floating_window = true,
      -- 绑定按键
      toggle_key = "<C-j>",
      -- 虚拟提示关闭
      hint_enable = true,
      -- 正在输入的参数将如何突出显示
      hi_parameter = "LspSignatureActiveParameter"
    }
  )
end

function config.nvim_cmp()
  --local lspkind = require("lspkind")
  local cmp = require("cmp")

  cmp.setup({
    -- 指定补全引擎
    snippet = {
      expand = function(args)
        -- 使用 vsnip 引擎
        vim.fn["vsnip#anonymous"](args.body)
      end
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    -- 指定补全源（安装了补全源插件就在这里指定）
    sources = cmp.config.sources({
        {name = "vsnip"},
        {name = "nvim_lsp"},
        {name = "path"},
        {name = "buffer"},
        {name = "cmdline"},
    }),
    -- 格式化补全菜单
    formatting = {
      fields = {'kind', 'abbr', 'menu'},
      format = function(entry, vim_item)
        local lspkind_icons = {
          Text = "",
          Method = "",
          Function = "",
          Constructor = " ",
          Field = "",
          Variable = "",
          Class = "",
          Interface = "",
          Module = "硫",
          Property = "",
          Unit = " ",
          Value = "",
          Enum = " ",
          Keyword = "ﱃ",
          Snippet = " ",
          Color = " ",
          File = " ",
          Reference = "Ꮢ",
          Folder = " ",
          EnumMember = " ",
          Constant = " ",
          Struct = " ",
          Event = "",
          Operator = "",
          TypeParameter = " ",
        }
        local meta_type = vim_item.kind
        -- load lspkind icons
        vim_item.kind = lspkind_icons[vim_item.kind]..''

        vim_item.menu = ({
          buffer = " Buffer",
          nvim_lsp = meta_type,
          path = " Path",
          luasnip = " LuaSnip"
        })[entry.source.name]

        return vim_item
      end,
    },
    -- formatting = {
    --   format = lspkind.cmp_format(
    --     {
    --       with_text = true,
    --       maxwidth = 50,
    --       before = function(entry, vim_item)
    --         vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
    --         return vim_item
    --       end
    --     }
    --   )
    -- },
    -- 对补全建议排序
    sorting = {
      comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        require("cmp-under-comparator").under,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order
      }
    },
    -- 绑定补全相关的按键
    mapping = {
      -- 上一个
      ["<s-Tab>"] = cmp.mapping.select_prev_item(),
      -- 下一个
      ["<Tab>"] = cmp.mapping.select_next_item(),
      -- 选择补全
      ["<CR>"] = cmp.mapping.confirm(),
      --  出现或关闭补全
      ["<C-d>"] = cmp.mapping({
          i = function()
            if cmp.visible() then
              cmp.abort()
            else
              cmp.complete()
            end
          end,
          c = function()
            if cmp.visible() then
              cmp.close()
            else
              cmp.complete()
            end
          end
      }),
    }
  })

  -- 命令行 / 模式提示
  cmp.setup.cmdline(
    "/",
    {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        {name = "buffer"}
      }
    }
  )

  -- 命令行 : 模式提示
  cmp.setup.cmdline(
    ":",
    {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources(
        {
          {name = "path"}
        },
        {
          {name = "cmdline"}
        }
      )
    }
  )
end

function config.nvim_treesitter()
  -- https://github.com/nvim-treesitter/nvim-treesitter
  -- https://github.com/p00f/nvim-ts-rainbow

  require("nvim-treesitter.configs").setup(
    {
      -- 安装的高亮支持来源
      ensure_installed = "all",
      -- 同步下载高亮支持
      sync_install = false,
      -- 高亮相关
      highlight = {
        -- 启用高亮支持
        enable = true,
        -- 使用 treesitter 高亮而不是 neovim 内置的高亮
        additional_vim_regex_highlighting = false
      },
      -- 范围选择
      incremental_selection = {
        enable = true,
        keymaps = {
          -- 初始化选择
          init_selection = "<CR>",
          -- 递增
          node_incremental = "<CR>",
          -- 递减
          node_decremental = "<BS>",
          -- 选择一个范围
          scope_incremental = "<TAB>"
        }
      },
      -- 缩进，关闭
      indent = {
        enable = false
      },
      -- 彩虹括号，由 nvim-ts-rainbow 插件提供
      rainbow = {
        enable = true,
        extended_mode = true
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
      },
    }
  )
end

function config.nvim_lint()
  -- https://github.com/mfussenegger/nvim-lint

  -- WARN: nvim-lint 手动下载诊断工具，确保该诊断工具能被全局调用
  -- pip3 install pylint

  require("lint").linters_by_ft = {
    python = {"pylint"}
    -- javascript = {"eslint"},
    -- typescript = {"eslint"},
    -- go = {"golangcilint"}
  }

  -- 配置 pylint，pylint 配置文件需要自己准备，这里不再演示
  require("lint.linters.pylint").args = {
    "-f",
    "json",
    "--rcfile=~/.config/nvim/lint/pylint.conf"
  }

  -- 何时触发检测：
  -- BufEnter  ： 载入 Buf 后
  -- BufWritePost： 写入文件后
  -- 由于搭配了 AutoSave，所以其他的事件就不用加了

  vim.cmd([[
  au BufEnter * lua require('lint').try_lint()
  au BufWritePost * lua require('lint').try_lint()
  ]])
end

function config.symbols_outline()

end

return config
