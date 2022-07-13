local global = {}
local home = os.getenv("HOME")
local os_name = vim.loop.os_uname().sysname
local load_plugins = true

function global:load_variables()
  self.is_mac   = os_name == 'Darwin'
  self.is_linux   = os_name == 'Linux'
  self.is_windows = os_name == 'Windows_NT'
  self.path_sep = self.is_windows and '\\' or '/'

  -- neovim config path
  self.config_path = vim.fn.stdpath('config')
  -- neovim data path
  self.data_path = string.format('%s%ssite', vim.fn.stdpath('data'), self.path_sep)
  -- neovim cache path
  self.cache_path = self.config_path .. self.path_sep .. '.cache' .. self.path_sep
  -- user home path
  self.home_path = home

  self.need_load_plugins = load_plugins
  -- plugins path
  self.modules_path = self.config_path .. self.path_sep .. 'modules'
end

-- Create cache dir and subs dir
function global:create_cache_dir()
  local data_dir = {
    self.cache_path .. 'backup',
    self.cache_path .. 'session',
    self.cache_path .. 'swap',
    self.cache_path .. 'tags',
    self.cache_path .. 'undo',
    self.cache_path .. 'view',
    self.cache_path .. 'spell/en.uft-8.add'
  }

  -- There only check once that If cache_path exists
  -- Then I don't want to check subs dir exists
  if self.is_windows then
    if vim.fn.isdirectory(self.cache_path) == 0 then
      os.execute("mkdir " .. self.cache_path)
      for _, v in pairs(data_dir) do
        if vim.fn.isdirectory(v) == 0 then
          os.execute("mkdir " .. v)
        end
      end
    end
  else
    if vim.fn.isdirectory(self.cache_path) == 0 then
      os.execute("mkdir -p " .. self.cache_path)
      for _, v in pairs(data_dir) do
        if vim.fn.isdirectory(v) == 0 then
          os.execute("mkdir -p " .. v)
        end
      end
    end
  end

end

global:load_variables()
global:create_cache_dir()

return global
