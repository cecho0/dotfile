local config = {}

function config.nvim_hlslens()
    local kopts = {noremap = true, silent = true}

    vim.api.nvim_set_keymap('n', 'n',
        [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
        kopts)
    vim.api.nvim_set_keymap('n', 'N',
        [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
        kopts)
    vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

    vim.api.nvim_set_keymap('n', '<Leader>l', ':noh<CR>', kopts)
end

function config.nvim_autopairs()
    require("nvim-autopairs").setup()
end

function config.AutoSave()
    require("autosave").setup(
        {
            enabled = true,
            -- 触发自动保存的事件（退出插入模式或者普通模式下文本内容发生改变）
            events = {"InsertLeave", "TextChanged"},
            -- 自动保存时的提示信息
            execution_message = "",
            conditions = {
                exists = true,
                -- 忽略自动保存的文件名字或文件类型
                filename_is_not = {},
                filetype_is_not = {},
                modifiable = true
            },
            -- 保存时写入全部的 Buffer
            write_all_buffers = true,
            on_off_commands = false,
            clean_command_line_interval = 0,
            debounce_delay = 135
        }
    )
end

function config.nvim_spectre()
    require("spectre").setup(
        {
            mapping = {
                -- 删除选中
                ["toggle_line"] = {
                    map = "dd",
                    cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
                    desc = "toggle current item"
                },
                -- 前往文件
                ["enter_file"] = {
                    map = "<CR>",
                    cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
                    desc = "goto current file"
                },
                -- 查看菜单（忽略大小写、忽略隐藏文件）
                ["show_option_menu"] = {
                    map = "<leader>o",
                    cmd = "<cmd>lua require('spectre').show_options()<CR>",
                    desc = "show option"
                },
                -- 开始替换
                ["run_replace"] = {
                    map = "<leader>r",
                    cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
                    desc = "replace all"
                },
                -- 显示差异
                ["change_view_mode"] = {
                    map = "<leader>v",
                    cmd = "<cmd>lua require('spectre').change_view()<CR>",
                    desc = "change result view mode"
                }
            }
        }
    )

    -- 全项目替换
    --vim.keybinds.gmap("n", "<leader>rp", "<cmd>lua require('spectre').open()<CR>", vim.keybinds.opts)
    -- 只替换当前文件
    --vim.keybinds.gmap("n", "<leader>rf", "viw:lua require('spectre').open_file_search()<CR>", vim.keybinds.opts)
    -- 全项目中搜索当前单词
    --vim.keybinds.gmap("n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", vim.keybinds.opts)
end

function config.vim_multiple_cursors()
    -- 关闭默认键位绑定
    vim.g.multi_cursor_use_default_mapping = 0

    -- 应用键位
    -- 开始选择单词
    vim.g.multi_cursor_start_word_key = "gb"
    -- 向后选择
    vim.g.multi_cursor_next_key = "<C-n>"
    -- 取消当前选择
    vim.g.multi_cursor_prev_key = "<C-p>"
    -- 跳过选择
    vim.g.multi_cursor_skip_key = "<C-b>"
    -- 退出选择
    vim.g.multi_cursor_quit_key = "<ESC>"
end

function config.nvim_colorizer()
    require("colorizer").setup()
end

function config.undotree()
    vim.cmd(
        [[
        if has("persistent_undo")
            " 在 config.lua 中定义好了 undotree_dir 全局变量
            let target_path = expand(undotree_dir)
            if !isdirectory(target_path)
                call mkdir(target_path, "p", 0700)
            endif
            let &undodir = target_path
            set undofile
    ]]
    )
end

function config.nvim_markdown_preview()
    
end

return config
