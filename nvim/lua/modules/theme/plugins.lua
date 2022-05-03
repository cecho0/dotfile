local theme = {}
local conf = require("modules.theme.config")

--[[
dark:
bkegley/gloombuddy
--]]

-- stome, night, day
theme["folke/tokyonight.nvim"] = {
    config = conf.tokyonight,
}

theme["ellisonleao/gruvbox.nvim"] = {
    config = conf.gruvbox,
}

theme["Th3Whit3Wolf/one-nvim"] = {
    config = conf.one_nvim
}

theme["shaunsingh/nord.nvim"] = {
    config = conf.nord
}

theme["shaunsingh/moonlight.nvim"] = {
    config = conf.moonlight
}

theme["bkegley/gloombuddy"] = {
    config = conf.gloombuddy,
    requires = {
        "tjdevries/colorbuddy.vim",
    }
}

return theme
