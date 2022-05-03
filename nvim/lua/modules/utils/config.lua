local config = {}

function config.telescope()
    local telescope = require("telescope")
    telescope.setup{
        defaults = {
          -- Default configuration for telescope goes here:
          -- config_key = value,
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ["<C-h>"] = "which_key"
            }
          }
        },
        pickers = {
          -- Default configuration for builtin pickers goes here:
          -- picker_name = {
          --   picker_config_key = value,
          --   ...
          -- }
          -- Now the picker_config_key will be applied every time you call this
          -- builtin picker
        },
        extensions = {
            ["ui-select"] = {
                require("telescope.themes").get_dropdown {
                  -- even more opts
                }

                -- pseudo code / specification for writing custom displays, like the one
                -- for "codeactions"
                -- specific_opts = {
                --   [kind] = {
                --     make_indexed = function(items) -> indexed_items, width,
                --     make_displayer = function(widths) -> displayer
                --     make_display = function(displayer) -> function(e)
                --     make_ordinal = function(e) -> string
                --   },
                --   -- for example to disable the custom builtin "codeactions" display
                --      do the following
                --   codeactions = false,
                -- }
            }
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
        }
    }

    telescope.load_extension("ui-select")
    -- <CR> 打开选中的搜索结果
    -- <Tab> 选中当前的搜索结果，可搭配 <CR> 一次性打开多个
    -- <C-v> 垂直拆分打开选中的搜索结果
    -- <C-c> 退出搜索框
    -- <C-n> 选择下一项目（插入模式下）
    -- <C-p> 选择上一个项目（插入模式下）
    -- j     选择下一个项目（普通模式下）
    -- k     选择上一个项目（普通模式下）
end

function config.telescope_ui_select()

end

function config.FTerm()
    --[[
    require"FTerm".setup({
        border = "double",
        dimensions  = {
            height = 0.9,
            width = 0.9,
        },
    })
    --]]

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
    map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
end

function config.startuptime()

end

function config.neovim_session_manager()
    --local Path = require('plenary.path')
    -- require('session_manager').setup({
    --     sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
    --     path_replacer = '__', -- The character to which the path separator will be replaced for session files.
    --     colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
    --     autoload_mode = require('session_manager.config').AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
    --     autosave_last_session = true, -- Automatically save last session on exit and on session switch.
    --     autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
    --     autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
    --       'gitcommit',
    --     }, 
    --     autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
    --     max_path_length = 80,  -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
    -- })
    require('session_manager').setup{}
end

return config
