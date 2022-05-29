return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
          ["rust-analyzer"] = {
               -- assist = {
               --      importGranularity = "module",
               --      importPrefix = "self",
               -- },
               -- cargo = {
               --      loadOutDirsFromCheck = true
               -- },
               -- procMacro = {
               --      enable = true
               -- },
               inlayHints = {
                    typeHints = true,
                    renderColons = true,
               }
          }
     }
}
