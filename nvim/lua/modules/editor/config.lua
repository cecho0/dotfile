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
            enabled = false,
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
