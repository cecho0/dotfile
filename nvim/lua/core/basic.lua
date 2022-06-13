local global = require('core.global')

vim.opt.termguicolors  = true;
vim.opt.syntax         = "enable";
vim.opt.mouse          = "nv";
vim.opt.errorbells     = true;
vim.opt.visualbell     = true;
vim.opt.hidden         = true;
vim.opt.fileformat     = "unix";
vim.opt.fileformats    = "unix,mac,dos";
-- 内部使用的编码方式
vim.opt.encoding       = "utf-8";
-- 自动识别的字符编码
vim.opt.fileencodings  = "utf-8,gb2312,ucs-bom,gb18030,gbk,cp936";
-- 在保存文件时，指定编码
vim.opt.fileencoding   = "utf-8";
vim.opt.magic          = true;
-- block, insert, all, onemore
vim.opt.virtualedit    = "block";
vim.opt.viewoptions    = "folds,cursor,curdir,slash,unix";
--[[
blank 恢复编辑无名缓冲区的窗口
buffers 恢复所有缓冲区（包括隐藏和未载入的缓冲区)
curdir 恢复当前目录
folds 恢复折叠
globals 恢复以大写字母开始并至少包含一个小写字母的全局变量
help 恢复帮助窗口
localoptions 恢复（限定于缓冲区内）本地选项
options 恢复全局映射和选项
resize 恢复以行列指定的窗口大小
sesdir 设置当前目录为会话文件所在的位置
salsh 在文件名中使用salsh（/），来代替backslah（\）
tabpages 恢复所有标签页
terminal 恢复终端窗口
unix 使用Unix模式的行尾标志（<NL>）
winpos 恢复 GUI Vim 的窗口位置
winsize 恢复窗口尺寸（相对于屏幕大小
--]]
vim.opt.sessionoptions = "curdir,help,tabpages,winsize";
vim.opt.clipboard      = "unnamedplus";
vim.opt.wildignorecase = true;
vim.opt.wildignore     = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**";
vim.opt.backup         = false;
vim.opt.writebackup    = false;
vim.opt.swapfile       = false;
vim.opt.directory      = global.cache_path .. "swap/";
vim.opt.undodir        = global.cache_path .. "undo/";
vim.opt.backupdir      = global.cache_path .. "backup/";
vim.opt.viewdir        = global.cache_path .. "view/";
vim.opt.spellfile      = global.cache_path .. "spell/en.uft-8.add";
vim.opt.history        = 2000;
vim.opt.shada          = "!,'300,<50,@100,s10,h";
vim.opt.backupskip     = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim";
vim.opt.smarttab       = true;
vim.opt.shiftround     = true;
vim.opt.timeout        = true;
vim.opt.ttimeout       = true;
vim.opt.timeoutlen     = 500;
vim.opt.ttimeoutlen    = 10;
vim.opt.updatetime     = 100;
vim.opt.redrawtime     = 1500;
vim.opt.ignorecase     = true;
vim.opt.smartcase      = true;
-- 自动补全自动调整大小写
vim.opt.infercase      = true;
vim.opt.incsearch      = true;
vim.opt.wrapscan       = true;
-- 当前行高亮
vim.opt.cursorline     = true;
-- 当前列高亮
vim.opt.cursorcolumn   = false;
-- 字符宽度
vim.opt.ambiwidth      = "single";
-- 自动匹配括号
vim.opt.showmatch      = true;
-- 文件有vim之外发生改变会重读文件
vim.opt.autoread       = true;
vim.opt.complete       = ".,w,b,k";
vim.opt.completeopt    = "menu,menuone,noselect";
vim.opt.inccommand     = "nosplit";
-- 命令补全
vim.opt.wildmenu       = true;
vim.opt.wildmode       = "longest:list,full";
vim.opt.grepformat     = "%f:%l:%c:%m";
vim.opt.grepprg        = 'rg --hidden --vimgrep --smart-case --';
-- 可以断行的字符
vim.opt.breakat        = [[\ \	;:,!?]];
vim.opt.startofline    = false;
vim.opt.whichwrap      = "h,l,<,>,[,],~";
vim.opt.splitbelow     = true;
vim.opt.splitright     = true;
vim.opt.switchbuf      = "useopen";
vim.opt.backspace      = "indent,eol,start";
vim.opt.diffopt        = "filler,iwhite,internal,algorithm:patience";
vim.opt.jumpoptions    = "stack";
vim.opt.hlsearch       = true;
vim.opt.showmode       = false;
vim.opt.shortmess      = "aoOTIcF";
vim.opt.scrolloff      = 2;
vim.opt.sidescrolloff  = 5;
vim.opt.foldlevelstart = 99;
vim.opt.ruler          = false;
vim.opt.list           = true;
vim.opt.showtabline    = 4;
vim.opt.winwidth       = 30;
vim.opt.winminwidth    = 10;
vim.opt.pumheight      = 15;
vim.opt.helpheight     = 12;
vim.opt.previewheight  = 12;
vim.opt.showcmd        = false;
-- just for nightly
--vim.opt.cmdheight      = 0;
vim.opt.cmdwinheight   = 5;
vim.opt.equalalways    = false;
vim.opt.laststatus     = 2;
vim.opt.display        = "lastline";
vim.opt.showbreak      = "↳  ";
vim.opt.listchars      = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←";
vim.opt.pumblend       = 10;
vim.opt.winblend       = 10;
vim.opt.undofile       = true;
vim.opt.synmaxcol      = 2500;
vim.opt.formatoptions  = "1jcroql";
vim.opt.textwidth      = 80;
vim.opt.expandtab      = true;
vim.opt.autoindent     = true;
vim.opt.tabstop        = 4;
vim.opt.shiftwidth     = 4;
vim.opt.softtabstop    = -1;
vim.opt.breakindentopt = "shift:2,min:20";
vim.opt.wrap           = false;
vim.opt.linebreak      = true;
vim.opt.number         = true;
vim.opt.colorcolumn    = "80";
vim.opt.foldenable     = true;
vim.opt.signcolumn     = "yes";
vim.opt.conceallevel   = 2;
vim.opt.concealcursor  = "niv";

if vim.loop.os_uname().sysname == 'Darwin' then
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






