local theme = {}
local conf = require("modules.theme.config")

-- stome, night, day
theme["folke/tokyonight.nvim"] = {
  config = conf.tokyonight,
}

theme["Th3Whit3Wolf/one-nvim"] = {
  config = conf.one_nvim
}

theme["shaunsingh/nord.nvim"] = {
  config = conf.nord
}

theme["EdenEast/nightfox.nvim"] = {
  config = conf.nightfox
}

theme["glepnir/zephyr-nvim"] = {
  config = conf.zephyr,
  requires = {
    "nvim-treesitter/nvim-treesitter"
  },
}

return theme
