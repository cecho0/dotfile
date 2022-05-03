local editor = {}
local conf = require("modules.editor.config")

editor["kevinhwang91/nvim-hlslens"] = {
    config = conf.nvim_hlslens,
}

editor["windwp/nvim-autopairs"] = {
    config = conf.nvim_autopairs,
}

editor["Pocco81/AutoSave.nvim"] = {
    config = conf.AutoSave,
}

editor["nvim-pack/nvim-spectre"] = {
    config = conf.nvim_spectre,
    requires = {
        "nvim-lua/plenary.nvim", -- Lua 开发模块
        "BurntSushi/ripgrep" -- 文字查找
    },
}

editor["terryma/vim-multiple-cursors"] = {
    config = conf.vim_multiple_cursors,
}

editor["norcalli/nvim-colorizer.lua"] = {
    config = conf.nvim_colorizer,
}

editor["mbbill/undotree"] = {
    config = conf.undotree,
}

editor["davidgranstrom/nvim-markdown-preview"] = {
    config = conf.nvim_markdown_preview,
}

return editor
