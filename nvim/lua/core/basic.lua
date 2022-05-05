local global = require('core.global')

local function bind_option(options)
    for k, v in pairs(options) do
        if v == true or v == false then
            vim.cmd('set ' .. k)
        else
            vim.cmd('set ' .. k .. '=' .. v)
        end
    end
end

local function load_options()
    local global_local = {
        termguicolors  = true;
        syntax = "enable";
        --[[
            设置鼠标可用
            a所有模式可用
            n普通模式
            v可视模式
            i插入模式
            c 命令行模式
        --]]
        --mouse          = "i";
        errorbells     = true;
        visualbell     = true;
        -- 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
        hidden         = true;
        fileformat     = "unix";
        fileformats    = "unix,mac,dos";
        -- 内部使用的编码方式
        encoding       = "utf-8";
        -- 自动识别的字符编码
        fileencodings  = "utf-8,gb2312,ucs-bom,gb18030,gbk,cp936";
        -- 在保存文件时，指定编码
        fileencoding   = "utf-8";
        magic          = true;
        virtualedit    = "block";
        viewoptions    = "folds,cursor,curdir,slash,unix";
        sessionoptions = "curdir,help,tabpages,winsize";
        clipboard      = "unnamedplus";
        wildignorecase = false;
        wildignore     = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**";
        backup         = false;
        writebackup    = false;
        swapfile       = false;
        undofile       = true;
        directory      = global.cache_path .. "swap/";
        undodir        = global.cache_path .. "undo/";
        backupdir      = global.cache_path .. "backup/";
        viewdir        = global.cache_path .. "view/";
        spellfile      = global.cache_path .. "spell/en.uft-8.add";
        history        = 2000;
        shada          = "!,'300,<50,@100,s10,h";
        backupskip     = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim";
        smarttab       = true;
        shiftround     = true;
        timeout        = true;
        ttimeout       = true;
        timeoutlen     = 500;
        ttimeoutlen    = 10;
        updatetime     = 100;
        redrawtime     = 1500;
        ignorecase     = true;
        smartcase      = true;
        infercase      = true;
        incsearch      = true;
        -- 搜索到文件两端不再搜索
        wrapscan       = false;
        -- 当前行高亮
        cursorline     = true;
        -- 当前列高亮
        cursorcolumn   = false;
        -- 窗口分隔符
        --fillchars      = "vert:\|";
        -- 状态栏填充 stlnc是别的窗口，stl是本窗口，不会同时生效
        --fillchars      = "stlnc:\ ";
        -- 字符宽度
        ambiwidth      = "single";
        -- 超过屏幕宽度折行
        wrap           = true;
        --t_Co           = "256";
        -- 自动匹配括号
        showmatch      = true;
        -- 文件发生改变会有提示
        autoread       = true;
        -- 命令补全
        wildmenu       = true;
        wildmode       = "longest:list,full";
        complete       = ".,w,b,k";
        inccommand     = "nosplit";
        grepformat     = "%f:%l:%c:%m";
        grepprg        = 'rg --hidden --vimgrep --smart-case --';
        breakat        = [[\ \	;:,!?]];
        startofline    = false;
        whichwrap      = "h,l,<,>,[,],~";
        splitbelow     = true;
        splitright     = true;
        switchbuf      = "useopen";
        backspace      = "indent,eol,start";
        diffopt        = "filler,iwhite,internal,algorithm:patience";
        completeopt    = "menuone,noselect";
        jumpoptions    = "stack";
        hlsearch       = true;
        showmode       = false;
        shortmess      = "aoOTIcF";
        scrolloff      = 2;
        sidescrolloff  = 5;
        foldenable     = true;
        foldmethod     = "indent";
        foldlevelstart = 99;
        ruler          = false;
        showtabline    = 4;
        winwidth       = 30;
        winminwidth    = 10;
        pumheight      = 15;
        helpheight     = 12;
        previewheight  = 12;
        showcmd        = false;
        cmdheight      = 2;
        cmdwinheight   = 5;
        equalalways    = false;
        laststatus     = 2;
        display        = "lastline";
        showbreak      = "↳  ";
        list           = true;
        -- eol:↴
        listchars      = "tab:»·,nbsp:+,space:·,trail:·,extends:→,precedes:←";
        pumblend       = 10;
        winblend       = 10;
        autoindent     = true;
        filetype       = "plugin";
        tabstop        = 4;
        shiftwidth     = 4;
        softtabstop    = -1;
        synmaxcol      = 2500;
        formatoptions  = "1jcroql";
        textwidth      = 100;
        expandtab      = true;
        breakindentopt = "shift:2,min:20";
        linebreak      = true;
        number         = true;
        --colorcolumn    = "100";
        signcolumn     = "yes";
        conceallevel   = 2;
        concealcursor  = "niv";
    }

    local bw_local  = {
        --undofile       = true;
        --synmaxcol      = 2500;
        --formatoptions  = "1jcroql";
        --textwidth      = 100;
        --expandtab      = true;
        --tabstop        = 4;
        --shiftwidth     = 4;
        --softtabstop    = -1;
        --breakindentopt = "shift:2,min:20";
        --wrap           = false;
        --linebreak      = true;
        --number         = true;

        --colorcolumn    = "100";

        --signcolumn     = "yes";
        --conceallevel   = 2;
        --concealcursor  = "niv";
    }

    if global.is_mac then
        vim.g.clipboard = {
            name = "macOS-clipboard",
            copy = {
                ["+"] = "pbcopy",
                ["*"] = "pbcopy",
            },
            paste = {
                ["+"] = "pbpaste",
                ["*"] = "pbpaste",
            },
            cache_enabled = 0
        }
        vim.g.python_host_prog = '/usr/bin/python'
        vim.g.python3_host_prog = '/usr/local/bin/python3'
    end

    for name, value in pairs(global_local) do
        vim.o[name] = value
    end

    --bind_option(bw_local)
end

load_options()
