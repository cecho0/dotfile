local editor = {}
local conf = require("modules.editor.config")

editor["kevinhwang91/nvim-hlslens"] = {
    config = conf.nvim_hlslens,
}

editor["windwp/nvim-autopairs"] = {
    opt = true,
    event = 'InsertEnter',
    config = conf.nvim_autopairs,
}

editor["Pocco81/AutoSave.nvim"] = {
    config = conf.AutoSave,
}

editor["norcalli/nvim-colorizer.lua"] = {
    config = conf.nvim_colorizer,
}

editor["mbbill/undotree"] = {
    config = conf.undotree,
}

editor["davidgranstrom/nvim-markdown-preview"] = {
    ft = "md, MD, markdown",
    config = conf.nvim_markdown_preview,
}

return editor
