local ui = {}
local conf = require("modules.ui.config")

ui["glepnir/dashboard-nvim"] = {
    config = conf.dashboard
}

-- lualine
ui["nvim-lualine/lualine.nvim"] = {
    config = conf.lualine,
    requires = {
        "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
    },
}

-- nvim-tree
ui["kyazdani42/nvim-tree.lua"] = {
    config = conf.nvim_tree,
    requires = "kyazdani42/nvim-web-devicons"
}

-- bufferline
ui["akinsho/nvim-bufferline.lua"] = {
    config = conf.nvim_bufferline,
    requires = "kyazdani42/nvim-web-devicons"
}

ui["lukas-reineke/indent-blankline.nvim"] = {
    event = 'BufRead',
    config = conf.indent_blakline
}

ui["karb94/neoscroll.nvim"] = {
    config = conf.neoscroll,
}

ui["rcarriga/nvim-notify"] = {
    config = conf.nvim_notify,
}

return ui
