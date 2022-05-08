local ui = {}
local conf = require("modules.ui.config")

ui["glepnir/dashboard-nvim"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.dashboard
}

-- lualine
ui["nvim-lualine/lualine.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.lualine,
    requires = {
        "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
    },
}

-- nvim-tree
ui["kyazdani42/nvim-tree.lua"] = {
    opt = true,
    event = "BufReadPre",
    config = conf.nvim_tree,
    requires = "kyazdani42/nvim-web-devicons"
}

-- bufferline
ui["akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline,
    requires = "kyazdani42/nvim-web-devicons"
}

ui["lukas-reineke/indent-blankline.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.indent_blakline
}

ui["karb94/neoscroll.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.neoscroll,
}

ui["rcarriga/nvim-notify"] = {
    opt = true,
    event = "VimEnter",
    config = conf.nvim_notify,
}


return ui
