local utils = {}
local conf = require("modules.utils.config")

utils["nvim-telescope/telescope.nvim"] = {
    config = conf.telescope,
    requires = {
        "nvim-lua/plenary.nvim", -- Lua 开发模块
        "BurntSushi/ripgrep", -- 文字查找
        "sharkdp/fd" -- 文件查找
    },
}

utils["nvim-telescope/telescope-ui-select.nvim"] = {
    config = conf.telescope_ui_select,
}

utils["akinsho/toggleterm.nvim"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.toggleterm,
}

utils["dstein64/vim-startuptime"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.startuptime
}

utils["Shatur/neovim-session-manager"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.neovim_session_manager,
}

return utils
