local global = require "core.global"
local vim = vim

local load_leader = function()
  vim.g.mapleader = ","
end

local load_colorscheme = function()
  --vim.g.tokyonight_style = "day"
  --vim.cmd("colorscheme tokyonight")

  --vim.opt.background = "dark" -- or "light" for light mode
  --vim.cmd("colorscheme gruvbox")

  --vim.cmd("colorscheme one-nvim")
  --vim.opt.background = "light" -- or "light" for light mode

  --vim.cmd("colorscheme nord")
  --vim.cmd("colorscheme moonlight")
  --vim.cmd("colorscheme gloombuddy")
  --vim.cmd("colorscheme duskfox")
  vim.cmd("colorscheme zephyr")
end

local load_client_cfg = function ()
  -- vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_cursor_vfx_particle_lifetime = 2
  vim.g.neovide_cursor_vfx_particle_density = 10.0
  vim.g.neovide_cursor_vfx_opacity = 300.0
end

local load_path = function ()
  -- undo tree cache path
  vim.g.undotree_dir = global.home_path .. global.path_sep .. ".cache" .. global.path_sep .. "nvim" .. global.path_sep .. "undotreedir"

  -- code snnippet path
  vim.g.vsnip_snippet_dir = global.config_path .. global.path_sep .. "snippets"
end

local load_core = function()

  load_leader()
  load_path()

  require("core.basic")
  require("keymap")

  if global.need_load_plugins then
    require("core.plug")
  end

  load_colorscheme()
  load_client_cfg()
end

load_core()
