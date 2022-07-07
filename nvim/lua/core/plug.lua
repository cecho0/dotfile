local fn,uv,api = vim.fn,vim.loop,vim.api
local global = require('core.global')
local config_path = global.config_path
local data_path = global.data_path
local modules_path = config_path .. global.path_sep .. 'lua' .. global.path_sep .. 'modules'
local packer_compiled = data_path .. 'packer_compiled.vim'
local compile_to_lua = data_path .. global.path_sep .. 'lua' .. global.path_sep .. '_compiled.lua'
local packer = {}
local plug = {}

function plug:target_directory(path)
  local F, err = io.open(path, "r+");
  if err then
    if global.is_windows then
      os.execute("mkdir " .. path)
    else
      os.execute("mkdir -p " .. path)
    end
  end
end

function plug:load_plugins()
  local list = {}
  local use_repos = {}
  local tmp = vim.split(fn.globpath(modules_path, '*' .. global.path_sep .. 'plugins.lua'), '\n')

  for _, filename in ipairs(tmp) do
    list[#list + 1] = filename:sub(#modules_path - 6, -1)
  end

  for _, v in ipairs(list) do
    local repos = require(v:sub(0, #v - 4))
    for repo, conf in pairs(repos) do
      use_repos[#use_repos + 1] = vim.tbl_extend('force', {repo}, conf)
    end
  end

  api.nvim_command('packadd packer.nvim')
  packer = require('packer')

  packer.init({
    git = { clone_timeout = 120 },
    disable_commands = false
  })
  packer.reset()

  packer.startup(
    {
      function()
        -- 包管理器
        use {
          "wbthomason/packer.nvim"
        }
      end,
      -- 使用浮动窗口
      config = {
        display = {
          open_fn = require("packer.util").float
        }
      }
    }
  )

  local use = packer.use

  for _, repo in ipairs(use_repos) do
    use(repo)
  end
end

function plug:init_plug()
  local path_tmp = global.path_sep .. 'pack' .. global.path_sep .. 'packer' .. global.path_sep .. 'start' .. global.path_sep .. 'packer.nvim'
  local packer_dir = data_path .. path_tmp
  local state = uv.fs_stat(packer_dir)
  if not state then
    plug:target_directory(packer_dir)
    local cmd = "!git clone https://github.com/wbthomason/packer.nvim " .. packer_dir
    api.nvim_command(cmd)
    uv.fs_mkdir(data_path..'lua', 511, function()
      assert("make compile path dir faield")
      end)
  end

  plug.load_plugins()
  vim.g.dashboard_default_executive = "telescope"
  --vim.g.dashboard_custom_section = {
  --  a = {description = {"[1 New File]"}, command = ":ene!"},
  --}
end

plug.init_plug()

return plug
