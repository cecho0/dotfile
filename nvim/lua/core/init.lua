local global = require 'core.global'
local vim = vim

local load_leader = function()
    vim.g.mapleader = ","
end

local load_colorscheme = function()
    --vim.g.tokyonight_style = "day"
    --vim.cmd('colorscheme tokyonight')

    --vim.opt.background = "dark" -- or "light" for light mode
    --vim.cmd('colorscheme gruvbox')

    --vim.cmd('colorscheme one-nvim')
    --vim.opt.background = "light" -- or "light" for light mode

    vim.cmd('colorscheme nord')
    --vim.cmd('colorscheme moonlight')
    --vim.cmd('colorscheme gloombuddy')
end

local load_dashborde_cfg = function ()
    vim.g.dashboard_custom_header = {
        "                                        ",
        "               ,                        ",
        "              s,,:r               ,S    ",
        "              s    r               G    ",
        " :r           s, i ,B:             2,   ",
        " ,2           ,s,X, ,s,            r2,: ",
        "  X            X    , ,,          rss,s:",
        "  r9,::        2 : :s9 ,          ,:,::,",
        " ,i,, sr       5   ,ri ::         is:r  ",
        " ,s,,,ih       X ii   sii,      :r:,sss,",
        " i, ::iss     rr iBBBBBB 2   ,rr:  9XsG ",
        ",:  is,s::ii:,2   iSrsiB: h2:,,,  r:,   ",
        " ,isGrrsi  , ,,            rr   ,9,     ",
        "   ,srii2:                   sr G       ",
        "     ,   :s,    :        ,    ,B:       ",
        "           Gi            ,      s       ",
        "          r,,                   ir      ",
        "         ,s    :              :  h      ",
        "         :s                     ,5      ",
        "          G                :  : G,      ",
        "          ,hs9r,s:,:    :,,s,sXM        ",
        "            Ms, r,,ss::r2ssi:  s        ",
        "            sir,: ,,,sss rsi ssh        ",
        "            ,ri:,:rr ishiXii,:s2        ",
        "              ,9si:Xi,,,: ,h:,ss        ",
        "              s:,:,s:     s  ,  2,      ",
        "            ,s,     r,   ,:  ,   h      ",
        "            s  :    ,,    i      s:     ",
        "           ,h      ,BBBBBBBB:   ,BBMG:  ",
        "      ,sGBBBB2:,,isGGh2Ss5s9Ms:::       ",
    }

end

local load_var = function ()
    -- undo tree cache path
    vim.g.undotree_dir = global.home_path .. global.path_sep .. ".cache" .. global.path_sep .. "nvim" .. global.path_sep .. "undotreedir"

    -- code snnippet path
    vim.g.vsnip_snippet_dir = global.config_path .. global.path_sep .. "snippets"

    -- 指定 Python 解释器路径
    --vim.g.python_path = "/usr/bin/python3"
end

local load_core = function()

    load_leader()
    load_var()
    load_dashborde_cfg()

    require('core.basic')
    require('keymap')
    require('core.plug')

    load_colorscheme()
end

load_core()
