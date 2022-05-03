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

utils["numToStr/FTerm.nvim"] = {
    opt = true,
    event = "BufWinEnter",
    config = conf.FTerm,
}

utils["dstein64/vim-startuptime"] = {
    config = conf.startuptime
}

utils["Shatur/neovim-session-manager"] = {
    config = conf.neovim_session_manager,
}

return utils
