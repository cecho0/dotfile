local config = {}

function reg_cmd()
    vim.cmd("command! NewFile : ene!")
    vim.cmd("command! ChangeScheme : Telescope colorscheme")
    vim.cmd("command! EditCfg : edit ~/.config/nvim/init.lua")
    vim.cmd("command! ExitAll : qa!")
end

function config.dashboard()
    -- ascii-image-converter可用来生成像素画

    local db = require("dashboard")
    -- vim.g.dashboard_custom_header = {
    -- "",
    -- "    ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ",
    -- "    ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ",
    -- "   ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ",
    -- "   ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ",
    -- "  ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ",
    -- "  ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ",
    -- " ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ",
    -- " ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ",
    -- " ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ",
    -- " ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ",
    -- "  ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ",
    -- "   ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ",
    -- "     ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ",
    -- "        ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁     ⢀⣠⣴ ",
    -- " ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ",
    -- "",
    -- }

    reg_cmd()
    db.custom_header = {
        "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠖⠚⢉⣩⣭⡭⠛⠓⠲⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀  ",
        "    ⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⡀⠀⠀⠀⠀  ",
        "    ⠀⠀⠀⠀⢀⡴⠃⢀⡴⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀  ",
        "    ⠀⠀⠀⠀⡾⠁⣠⠋⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀  ",
        "    ⠀⠀⠀⣸⠁⢰⠃⠀⠀⠀⠈⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀  ",
        "    ⠀⠀⠀⡇⠀⡾⡀⠀⠀⠀⠀⣀⣹⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀  ",
        "    ⠀⠀⢸⠃⢀⣇⡈⠀⠀⠀⠀⠀⠀⢀⡑⢄⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ",
        "    ⠀⠀⢸⠀⢻⡟⡻⢶⡆⠀⠀⠀⠀⡼⠟⡳⢿⣦⡑⢄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ",
        "    ⠀⠀⣸⠀⢸⠃⡇⢀⠇⠀⠀⠀⠀⠀⡼⠀⠀⠈⣿⡗⠂⠀⠀⠀⠀⠀⠀⠀⢸⠁  ",
        "    ⠀⠀⡏⠀⣼⠀⢳⠊⠀⠀⠀⠀⠀⠀⠱⣀⣀⠔⣸⠁⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀  ",
        "    ⠀⠀⡇⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀  ",
        "    ⠀⢸⠃⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⢀⠀⠀⠀⠀⠀⣾⠀⠀  ",
        "    ⠀⣸⠀⠀⠹⡄⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠸⠀⠀⠀⠀⠀⡇⠀⠀  ",
        "    ⠀⡏⠀⠀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⢀⣠⢶⡇⠀⠀⢰⡀⠀⠀⠀⠀⠀⡇⠀⠀  ",
        "    ⢰⠇⡄⠀⠀⠀⡿⢣⣀⣀⣀⡤⠴⡞⠉⠀⢸⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣧⠀⠀  ",
        "    ⣸⠀⡇⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⢹⠀⠀⢸⠀⠀⢀⣿⠇⠀⠀⠀⠁⠀⢸⠀⠀  ",
        "    ⣿⠀⡇⠀⠀⠀⠀⠀⢀⡤⠤⠶⠶⠾⠤⠄⢸⠀⡀⠸⣿⣀⠀⠀⠀⠀⠀⠈⣇⠀  ",
        "    ⡇⠀⡇⠀⠀⡀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠸⡌⣵⡀⢳⡇⠀⠀⠀⠀⠀⠀⢹⡀  ",
        "    ⡇⠀⠇⠀⠀⡇⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠮⢧⣀⣻⢂⠀⠀⠀⠀⠀⠀⢧  ",
        "    ⣇⠀⢠⠀⠀⢳⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡎⣆⠀⠀⠀⠀⠀⠘  ",
        "                                        ",
    }

    db.custom_center = {
        {
            icon = '   ',
            desc = 'New file      ',
            action = 'NewFile'
        },
        {
            icon = '   ',
            desc = 'Find text     ',
            action = 'Telescope live_grep'
        },
        {
            icon = '   ',
            desc = 'Find file     ',
            action = 'Telescope find_files'
        },
        {
            icon = '   ',
            desc = 'Find project  ',
            action = 'SessionManager load_session'
        },
        {
            icon = '   ',
            desc = 'Configuration ',
            action = 'EditCfg'
        },
        {
            icon = '   ',
            desc = 'Change themes ',
            action = 'ChangeScheme'
        },
        {
            icon = '   ',
            desc = 'Quit Neovim   ',
            action = 'ExitAll'
        },
    }

    vim.cmd("highlight DashboardCenter guifg='#A3BE8C'")
    vim.cmd("highlight DashboardCenterIcon guifg='#81A1C1'")
    vim.cmd("highlight DashboardFooter guifg='#b48EAD'")
    vim.cmd("highlight DashboardHeader guifg='#EBCB8B'")

    --vim.g.indentLine_fileTypeExclude = "dashboard"

end

function config.lualine()
    require("lualine").setup{
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = {left = '', right = '' },
            section_separators = { left = '', right = ''},
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
    }
end

function config.nvim_tree()
    require("nvim-tree").setup(
        {
            -- 视图
            view = {
                -- 宽度
                width = 30,
                -- 高度
                height = 30,
                -- 隐藏顶部的根目录显示
                hide_root_folder = false,
            },
            diagnostics = {
                -- 是否启用文件诊断信息
                enable = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = ""
                }
            },
            git = {
                -- 是否启用 git 信息
                enable = true,
                ignore = true,
                timeout = 500
            }
        }
    )

    -- 默认图标，可自行修改
    vim.g.nvim_tree_icons = {
        default = " ",
        symlink = " ",
        git = {
            unstaged = "",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "",
            deleted = "",
            ignored = ""
        },
        folder = {
            -- arrow_open = "╰─▸",
            -- arrow_closed = "├─▸",
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = ""
        }
    }

    -- 目录后加上反斜杠 /
    vim.g.nvim_tree_add_trailing = 1

    -- 默认按键
    -- o     ：打开目录或文件
    -- a     ：新增目录或文件
    -- r     ：重命名目录或文件
    -- x     ：剪切目录或文件
    -- c     ：复制目录或文件
    -- d     ：删除目录或文件
    -- y     ：复制目录或文件名称
    -- Y     ：复制目录或文件相对路径
    -- gy    ：复制目录或文件绝对路径
    -- p     ：粘贴目录或文件
    -- s     ：使用系统默认程序打开目录或文件
    -- <Tab> ：将文件添加到缓冲区，但不移动光标
    -- <C-v> ：垂直分屏打开文件
    -- <C-x> ：水平分屏打开文件
    -- <C-]> ：进入光标下的目录
    -- <C-r> ：重命名目录或文件，删除已有目录名称
    -- -     ：返回上层目录
    -- I     ：切换隐藏文件/目录的可见性
    -- H     ：切换点文件的可见性
    -- R     ：刷新资源管理器
    -- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索
end

function config.nvim_bufferline()
    require("bufferline").setup(
        {
            options = {
                -- 为每个 buffer 都配置一个序数
                numbers = "ordinal",
                -- 使用内置 LSP 进行诊断
                diagnostics = "nvim_lsp",
                -- 不建议更改图标
                indicator_icon = "▎",
                buffer_close_icon = "",
                modified_icon = "●",
                close_icon = "",
                left_trunc_marker = "",
                right_trunc_marker = "",
                -- 分割符样式："slant" | "thick" | "thin"
                -- 如果是透明背景，不推荐使用 slant
                separator_style = "thin",
                -- 左侧让出 nvim-tree 的位置
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
                -- 显示 LSP 报错图标
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or "")
                        s = s .. n .. sym
                    end
                    return s
                end
            }
        }
    )

end

function config.indent_blakline()
    -- vim.opt.listchars:append("space:·")
    require("indent_blankline").setup(
        {
            -- 显示当前所在区域
            show_current_context = true,
            -- 显示当前所在区域的开始位置
            show_current_context_start = true,
            -- 显示行尾符
            show_end_of_line = true,
        }
    )
    vim.g.indent_blankline_char = "│"
    vim.g.indent_blankline_show_first_indent_level = true
    vim.g.indent_blankline_filetype_exclude = {
        "startify",
        "dashboard",
        "dotooagenda",
        "log",
        "fugitive",
        "gitcommit",
        "packer",
        "vimwiki",
        "markdown",
        "json",
        "txt",
        "vista",
        "help",
        "todoist",
        "NvimTree",
        "peekaboo",
        "git",
        "TelescopePrompt",
        "undotree",
        "flutterToolsOutline",
        "" -- for all buffers without a file type
    }
    vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_current_context = true
    vim.g.indent_blankline_context_patterns = {
        "class",
        "function",
        "method",
        "block",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for"
    }
end

function config.neoscroll()
    require('neoscroll').setup()
end

function config.nvim_notify()
    local notify_opts = {
        -- 动画样式
        -- fade_in_slide_out
        -- fade
        -- slide
        -- static
        stages = "fade",
        -- 超时时间，默认 5s
        timeout = 2000
    }

    -- 如果是透明背景，则需要设置背景色
    if vim.g.background_transparency then
        notify_opts.background_colour = "#ffffff"
    end

    vim.notify = require("notify")

    vim.notify.setup(notify_opts)
    -- 使用案例：
    -- 信息、级别、标题
    -- 级别有：info、warn、error、debug、trace
    -- 示例：
    -- vim.notify("hello world", "info", {title = "info"})
end

return config
