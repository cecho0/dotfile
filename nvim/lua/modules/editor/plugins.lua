local editor = {}
local conf = require("modules.editor.config")

editor["kevinhwang91/nvim-hlslens"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_hlslens,
}

editor["windwp/nvim-autopairs"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_autopairs,
}

editor["Pocco81/AutoSave.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.AutoSave,
}

-- editor["nvim-pack/nvim-spectre"] = {
--     opt = true,
--     event = "BufRead",
--     config = conf.nvim_spectre,
--     requires = {
--         "nvim-lua/plenary.nvim", -- Lua 开发模块
--         "BurntSushi/ripgrep" -- 文字查找
--     },
-- }

editor["terryma/vim-multiple-cursors"] = {
    opt = true,
    config = conf.vim_multiple_cursors,
}

editor["norcalli/nvim-colorizer.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_colorizer,
}

editor["mbbill/undotree"] = {
    opt = true,
    event = "BufRead",
    config = conf.undotree,
}

editor["davidgranstrom/nvim-markdown-preview"] = {
    opt = true,
    event = "BufRead",
    ft = "md, MD, markdown",
    config = conf.nvim_markdown_preview,
}

return editor
