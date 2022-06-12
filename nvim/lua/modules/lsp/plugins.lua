local lsp = {}
local conf = require("modules.lsp.config")

-- LSP 基础服务
lsp["neovim/nvim-lspconfig"] = {
    config = conf.nvim_lspconfig,
}

-- 自动安装 LSP
lsp["williamboman/nvim-lsp-installer"] = {
    config = conf.nvim_lsp_installer,
    after = "lspsaga.nvim",
}

-- LSP UI 美化
lsp["tami5/lspsaga.nvim"] = {
    config = conf.lspsaga,
}

-- LSP 进度提示
lsp["j-hui/fidget.nvim"] = {
    config = conf.fidget
}

-- 插入模式获得函数签名
lsp["ray-x/lsp_signature.nvim"] = {
    config = conf.lsp_signature,
}

-- 自动代码补全系列插件
lsp["hrsh7th/nvim-cmp"] = {
    -- 代码补全核心插件，下面都是增强补全的体验插件"
    config = conf.nvim_cmp,
    requires = {
        --{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
        {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
        {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
        {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
        {"hrsh7th/cmp-path"}, -- 路径补全
        {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
        {"hrsh7th/cmp-cmdline"}, -- 命令补全
        {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
        {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
    },
}

lsp["nvim-treesitter/nvim-treesitter"] = {
    run = {":TSupdate"},
    config = conf.nvim_treesitter,
    requires = {
        "p00f/nvim-ts-rainbow" -- 彩虹括号
    },
}

--扩展 LSP 诊断
lsp["mfussenegger/nvim-lint"] = {
    config = conf.nvim_lint,
}

-- 代码调试基础插件
lsp["mfussenegger/nvim-dap"] = {
    config = conf.nvim_dap,
}

-- 为代码调试提供内联文本
lsp["theHamsta/nvim-dap-virtual-text"] = {
    config = conf.nvim_dap_virtual_text,
    require = {
        "mfussenegger/nvim-dap",
    }
}

-- 为代码调试提供 UI 界面
lsp["rcarriga/nvim-dap-ui"] = {
    config = conf.nvim_dap_ui,
    requires = {
        "mfussenegger/nvim-dap",
    }
}

lsp["simrat39/symbols-outline.nvim"] = {
    config = conf.symbols_outline,
}

lsp["simrat39/rust-tools.nvim"] = {
    config = conf.rust_tools,
    after = {"nvim-lspconfig"}
}

return lsp
