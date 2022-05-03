-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cecho/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/cecho/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/cecho/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/cecho/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cecho/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\n≤\2\0\0\5\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0004\4\0\0=\4\a\0034\4\0\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15conditions\20filetype_is_not\20filename_is_not\1\0\2\vexists\2\15modifiable\2\vevents\1\3\0\0\16InsertLeave\16TextChanged\1\0\6 clean_command_line_interval\3\0\20on_off_commands\1\fenabled\2\22write_all_buffers\2\19debounce_delay\3á\1\22execution_message\5\nsetup\rautosave\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\nŸ\1\0\0\b\0\t\0\0176\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\b\0\18\a\1\0B\2\5\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/opt/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["distant.nvim"] = {
    config = { "\27LJ\2\nt\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\2B\0\2\1K\0\1\0\6*\1\0\0\17chip_default\21distant.settings\nsetup\fdistant\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/distant.nvim",
    url = "https://github.com/chipsenkbeil/distant.nvim"
  },
  fd = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gloombuddy = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/gloombuddy",
    url = "https://github.com/bkegley/gloombuddy"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nâ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\21show_end_of_line\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n«\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\1\0\5\15toggle_key\n<C-j>\20floating_window\2\tbind\2\17hi_parameter LspSignatureActiveParameter\16hint_enable\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nÌ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\23rename_action_keys\1\0\2\tquit\n<Esc>\texec\t<CR>\21code_action_keys\1\0\2\tquit\n<Esc>\texec\t<CR>\23code_action_prompt\1\0\4\17virtual_text\2\venable\1\18sign_priority\3(\tsign\2\1\0\a\15error_sign\tÔôô \17border_style\nround\21code_action_icon\tÔÄå \27diagnostic_header_icon\tÔÜà \15infor_sign\tÔ°ß \14hint_sign\tÔÉ´ \14warn_sign\tÔÅ± \nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["moonlight.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20session_manager\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nord.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÑ©\tÔÅ± \fwarning\tÔÅó \nerror\npairs\6 Ü\3\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\0033\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\foffsets\1\0\4\14highlight\14Directory\rfiletype\rNvimTree\ttext\18File Explorer\15text_align\tleft\1\0\t\fnumbers\fordinal\20separator_style\tthin\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\16diagnostics\rnvim_lsp\22buffer_close_icon\bÔôï\19indicator_icon\b‚ñé\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimQ\0\2\6\0\a\0\n'\2\1\0006\3\2\0009\3\3\0039\5\4\0009\5\5\5B\3\2\2'\4\6\0&\2\4\2=\2\0\1L\1\2\0\6]\tname\vsource\nupper\vstring\6[\tmenuT\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\1¿\rcomplete\nabort\fvisibleT\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\1¿\rcomplete\nclose\fvisibleÇ\b\1\0\v\0<\0á\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0054\a\6\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a5\b\r\0>\b\3\a5\b\14\0>\b\4\a5\b\15\0>\b\5\aB\5\2\2=\5\n\0045\5\20\0009\6\16\0005\b\17\0003\t\18\0=\t\19\bB\6\2\2=\6\21\5=\5\22\0045\5\"\0004\6\n\0009\a\t\0019\a\23\a9\a\24\a>\a\1\0069\a\t\0019\a\23\a9\a\25\a>\a\2\0069\a\t\0019\a\23\a9\a\26\a>\a\3\0069\a\t\0019\a\23\a9\a\27\a>\a\4\0066\a\0\0'\t\28\0B\a\2\0029\a\29\a>\a\5\0069\a\t\0019\a\23\a9\a\30\a>\a\6\0069\a\t\0019\a\23\a9\a\31\a>\a\a\0069\a\t\0019\a\23\a9\a \a>\a\b\0069\a\t\0019\a\23\a9\a!\a>\a\t\6=\6#\5=\5$\0045\5'\0009\6%\0019\6&\6B\6\1\2=\6(\0059\6%\0019\6)\6B\6\1\2=\6*\0059\6%\0019\6+\6B\6\1\2=\6,\0059\6%\0015\b.\0003\t-\0=\t/\b3\t0\0=\t1\bB\6\2\2=\0062\5=\5%\4B\2\2\0019\2\3\0019\0023\2'\0044\0005\0056\0009\6%\0019\0065\0069\0063\6B\6\1\2=\6%\0054\6\3\0005\a7\0>\a\1\6=\6\n\5B\2\3\0019\2\3\0019\0023\2'\0048\0005\0059\0009\6%\0019\0065\0069\0063\6B\6\1\2=\6%\0059\6\t\0019\6\n\0064\b\3\0005\t:\0>\t\1\b4\t\3\0005\n;\0>\n\1\tB\6\3\2=\6\n\5B\2\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\n<C-d>\6c\0\6i\1\0\0\0\t<CR>\fconfirm\n<Tab>\21select_next_item\f<s-Tab>\1\0\0\21select_prev_item\fmapping\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\18recently_used\nscore\nexact\voffset\fcompare\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\nÕ\t\0\0\n\0,\0z6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0B\1\3\0015\1\b\0006\2\0\0'\4\a\0B\2\2\2=\2\t\0016\2\n\0\18\4\1\0B\2\2\4H\5\nÄ9\a\v\0009\b\f\0069\b\r\b9\t\v\6<\t\b\a9\a\14\0009\b\f\0069\b\15\b9\t\14\6<\t\b\aF\5\3\3R\5Ù6\2\2\0005\3\19\0006\4\2\0009\4\17\0049\4\18\4=\4\20\0036\4\2\0009\4\17\0049\4\21\4=\4\22\0036\4\2\0009\4\17\0049\4\23\4=\4\24\0036\4\2\0009\4\17\0049\4\25\4=\4\26\0035\4\27\0=\4\28\3=\3\16\0026\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5\30\0'\6\31\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5 \0'\6!\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5\"\0'\6#\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5$\0'\6%\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5&\0'\6'\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5(\0'\6)\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5*\0'\6+\0006\a\2\0009\a\16\a9\a\28\aB\2\5\1K\0\1\0í\1<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>\n<F10>)<cmd>lua require'dap'.run_last()<CR>\t<F9>)<cmd>lua require'dap'.step_out()<CR>\t<F8>*<cmd>lua require'dap'.step_over()<CR>\t<F7>*<cmd>lua require'dap'.step_into()<CR>\t<F6>)<cmd>lua require'dap'.continue()<CR>\t<F5>2<cmd>lua require'dap'.toggle_breakpoint()<CR>\15<leader>db\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\24configurations_name\19configurations\18adapters_name\tname\radapters\npairs\vpython\1\0\0\15dap.python\1\0\4\vtexthl\14TodoFgFIX\nnumhl\5\ttext\b‚äö\vlinehl\5\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen6\0\0\2\2\2\0\b-\0\0\0009\0\0\0B\0\1\1-\0\1\0009\0\1\0009\0\0\0B\0\1\1K\0\1\0\1¿\0¿\trepl\nclose6\0\0\2\2\2\0\b-\0\0\0009\0\0\0B\0\1\1-\0\1\0009\0\1\0009\0\0\0B\0\1\1K\0\1\0\1¿\0¿\trepl\ncloseº\4\1\0\b\0\"\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\5\0005\5\4\0=\5\6\4B\2\2\0019\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0026\2\17\0005\3\21\0006\4\17\0009\4\19\0049\4\20\4=\4\22\0036\4\17\0009\4\19\0049\4\23\4=\4\24\0036\4\17\0009\4\19\0049\4\25\4=\4\26\0036\4\17\0009\4\19\0049\4\27\4=\4\28\0035\4\29\0=\4\30\3=\3\18\0026\2\17\0009\2\18\0029\2\22\2'\4\31\0'\5 \0'\6!\0006\a\17\0009\a\18\a9\a\30\aB\2\5\0012\0\0ÄK\0\1\0)<cmd>lua require'dapui'.toggle()<CR>\15<leader>du\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\bvim\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\fsidebar\1\0\0\1\0\1\rposition\nright\nsetup\ndapui\bdap\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\nå\5\0\0\a\0\18\0:5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\4\0'\5\5\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\r:noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\nº\2\0\0\3\0\f\0\0176\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0006\0\0\0'\2\6\0B\0\2\0025\1\b\0=\1\a\0006\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0o    au BufEnter * lua require('lint').try_lint()\n    au BufWritePost * lua require('lint').try_lint()\n    \bcmd\bvim\1\4\0\0\a-f\tjson---rcfile=~/.config/nvim/lint/pylint.conf\targs\24lint.linters.pylint\vpython\1\0\0\1\2\0\0\vpylint\18linters_by_ft\tlint\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\nü\t\0\2\t\0#\0Ñ\0016\2\0\0005\3\4\0006\4\0\0009\4\2\0049\4\3\4=\4\5\0036\4\0\0009\4\2\0049\4\6\4=\4\a\0036\4\0\0009\4\2\0049\4\b\4=\4\t\0036\4\0\0009\4\2\0049\4\n\4=\4\v\0035\4\f\0=\4\r\3=\3\1\0026\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\15\0'\a\16\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\17\0'\a\18\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\19\0'\a\20\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\21\0'\a\22\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\23\0'\a\24\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\25\0'\a\26\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\27\0'\a\28\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\29\0'\a\30\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\31\0'\a \0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6!\0'\a\"\0006\b\0\0009\b\1\b9\b\r\bB\2\6\1K\0\1\0E<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>\n<C-d>F<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>\n<C-u>*<cmd>Lspsaga diagnostic_jump_next<CR>\ag]*<cmd>Lspsaga diagnostic_jump_prev<CR>\ag[\31<cmd>Lspsaga hover_doc<CR>\agh\28<cmd>Lspsaga rename<CR>\15<leader>cn7<cmd>Telescope lsp_code_actions theme=dropdown<CR>\15<leader>ca2<cmd>Telescope diagnostics theme=dropdown<CR>\ago5<cmd>Telescope lsp_references theme=dropdown<CR>\agr6<cmd>Telescope lsp_definitions theme=dropdown<CR>\agd\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\bvimä\1\0\0\4\4\5\0\15-\0\0\0-\1\1\0=\1\0\0-\0\0\0005\1\2\0=\1\1\0-\0\0\0-\1\2\0=\1\3\0-\0\3\0\18\2\0\0009\0\4\0-\3\0\0B\0\3\1K\0\1\0\b¿\3¿\1Ä\n¿\nsetup\17capabilities\1\0\1\26debounce_text_changes\3ñ\1\nflags\14on_attachÙ\4\1\0\16\0\30\0H6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0026\2\0\0'\4\6\0B\2\2\0029\2\a\2\18\4\1\0B\2\2\2\18\1\2\0005\2\t\0006\3\0\0'\5\b\0B\3\2\2=\3\n\0026\3\0\0'\5\v\0B\3\2\2=\3\f\0026\3\0\0'\5\r\0B\3\2\2=\3\14\0026\3\0\0'\5\15\0B\3\2\2=\3\16\0026\3\0\0'\5\17\0B\3\2\2=\3\18\0023\3\19\0006\4\20\0\18\6\2\0B\4\2\4H\a\27Ä9\t\21\0\18\v\a\0B\t\2\3\15\0\t\0X\v\20Ä\18\r\n\0009\v\22\n3\14\23\0B\v\3\1\18\r\n\0009\v\24\nB\v\2\2\14\0\v\0X\v\vÄ6\v\2\0009\v\25\v'\r\26\0\18\14\a\0&\r\14\r'\14\27\0005\15\28\0B\v\4\1\18\r\n\0009\v\29\nB\v\2\0012\t\0Ä2\a\0ÄF\a\3\3R\a„2\0\0ÄK\0\1\0\finstall\1\0\1\ntitle\21Language Servers\tWARN\31Install Language Server : \vnotify\17is_installed\0\ron_ready\15get_server\npairs\0\vclangd\15lsp.clangd\14zeta_note\18lsp.zeta_note\ngopls\14lsp.gopls\fpyright\16lsp.pyright\16sumneko_lua\1\0\0\20lsp.sumneko_lua\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\31nvim-lsp-installer.servers\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nö\1\0\0\4\0\b\0\n6\0\0\0009\0\1\0009\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\nfloat\1\0\1\vsource\valways\17virtual_text\1\0\1\21update_in_insert\1\1\0\2\vsource\valways\vprefix\b‚óè\vconfig\15diagnostic\bvim\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-markdown-preview"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-markdown-preview",
    url = "https://github.com/davidgranstrom/nvim-markdown-preview"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n∫\1\0\0\5\0\t\0\0195\0\0\0006\1\1\0009\1\2\0019\1\3\1\15\0\1\0X\2\2Ä'\1\5\0=\1\4\0006\1\1\0006\2\a\0'\4\6\0B\2\2\2=\2\6\0016\1\1\0009\1\6\0019\1\b\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\frequire\vnotify\f#ffffff\22background_colour\28background_transparency\6g\bvim\1\0\2\vstages\tfade\ftimeout\3–\15\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\nÄ\5\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\fmapping\1\0\0\21change_view_mode\1\0\3\bmap\14<leader>v\tdesc\28change result view mode\bcmd2<cmd>lua require('spectre').change_view()<CR>\16run_replace\1\0\3\bmap\14<leader>r\tdesc\16replace all\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\21show_option_menu\1\0\3\bmap\14<leader>o\tdesc\16show option\bcmd3<cmd>lua require('spectre').show_options()<CR>\15enter_file\1\0\3\bmap\t<CR>\tdesc\22goto current file\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\16toggle_line\1\0\0\1\0\3\bmap\add\tdesc\24toggle current item\bcmd2<cmd>lua require('spectre').toggle_line()<CR>\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nº\4\0\0\5\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0005\1\15\0005\2\16\0=\2\v\0015\2\17\0=\2\18\1=\1\14\0006\0\f\0009\0\r\0)\1\1\0=\1\19\0K\0\1\0\27nvim_tree_add_trailing\vfolder\1\0\b\fsymlink\bÔíÇ\nempty\bÔÑî\fdefault\bÓóø\15empty_open\bÔÑï\17symlink_open\bÓóæ\topen\bÓóæ\17arrow_closed\bÔë†\15arrow_open\bÔëº\1\0\a\frenamed\b‚ûú\14untracked\bÔë°\runmerged\bÓúß\fdeleted\bÔëò\vstaged\b‚úì\fignored\bÔë§\runstaged\bÔëÑ\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\6g\bvim\bgit\1\0\3\venable\2\ftimeout\3Ù\3\vignore\2\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\1\0\1\venable\2\tview\1\0\0\1\0\3\21hide_root_folder\1\vheight\3\30\nwidth\3\30\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ná\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\19init_selection\t<CR>\22scope_incremental\n<TAB>\21node_decremental\t<BS>\21node_incremental\t<CR>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\2\17sync_install\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["one-nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/one-nvim",
    url = "https://github.com/Th3Whit3Wolf/one-nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nñ\2\0\0\t\0\17\1\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\0034\4\0\0=\4\n\0035\4\r\0004\5\3\0006\6\0\0'\b\v\0B\6\2\0029\6\f\0064\b\0\0B\6\2\0?\6\0\0=\5\14\4=\4\15\3B\1\2\0019\1\16\0'\3\14\0B\1\2\1K\0\1\0\19load_extension\15extensions\14ui-select\1\0\0\17get_dropdown\21telescope.themes\fpickers\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    config = { "\27LJ\2\nÛ\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0”\2        if has(\"persistent_undo\")\n            \" Âú® config.lua ‰∏≠ÂÆö‰πâÂ•Ω‰∫Ü undotree_dir ÂÖ®Â±ÄÂèòÈáè\n            let target_path = expand(undotree_dir)\n            if !isdirectory(target_path)\n                call mkdir(target_path, \"p\", 0700)\n            endif\n            let &undodir = target_path\n            set undofile\n    \bcmd\bvim\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-multiple-cursors"] = {
    config = { "\27LJ\2\n°\2\0\0\2\0\r\0\0256\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0'\1\f\0=\1\v\0K\0\1\0\n<ESC>\26multi_cursor_quit_key\n<C-b>\26multi_cursor_skip_key\n<C-p>\26multi_cursor_prev_key\n<C-n>\26multi_cursor_next_key\agb multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-startuptime"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/cecho/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\nå\5\0\0\a\0\18\0:5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\4\0'\5\5\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\r:noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
try_loadstring("\27LJ\2\nº\2\0\0\3\0\f\0\0176\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0006\0\0\0'\2\6\0B\0\2\0025\1\b\0=\1\a\0006\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0o    au BufEnter * lua require('lint').try_lint()\n    au BufWritePost * lua require('lint').try_lint()\n    \bcmd\bvim\1\4\0\0\a-f\tjson---rcfile=~/.config/nvim/lint/pylint.conf\targs\24lint.linters.pylint\vpython\1\0\0\1\2\0\0\vpylint\18linters_by_ft\tlint\frequire\0", "config", "nvim-lint")
time([[Config for nvim-lint]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\21show_end_of_line\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n«\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\1\0\5\15toggle_key\n<C-j>\20floating_window\2\tbind\2\17hi_parameter LspSignatureActiveParameter\16hint_enable\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\2\n≤\2\0\0\5\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0004\4\0\0=\4\a\0034\4\0\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15conditions\20filetype_is_not\20filename_is_not\1\0\2\vexists\2\15modifiable\2\vevents\1\3\0\0\16InsertLeave\16TextChanged\1\0\6 clean_command_line_interval\3\0\20on_off_commands\1\fenabled\2\22write_all_buffers\2\19debounce_delay\3á\1\22execution_message\5\nsetup\rautosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nÌ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\23rename_action_keys\1\0\2\tquit\n<Esc>\texec\t<CR>\21code_action_keys\1\0\2\tquit\n<Esc>\texec\t<CR>\23code_action_prompt\1\0\4\17virtual_text\2\venable\1\18sign_priority\3(\tsign\2\1\0\a\15error_sign\tÔôô \17border_style\nround\21code_action_icon\tÔÄå \27diagnostic_header_icon\tÔÜà \15infor_sign\tÔ°ß \14hint_sign\tÔÉ´ \14warn_sign\tÔÅ± \nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\t\0\17\1\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\0034\4\0\0=\4\n\0035\4\r\0004\5\3\0006\6\0\0'\b\v\0B\6\2\0029\6\f\0064\b\0\0B\6\2\0?\6\0\0=\5\14\4=\4\15\3B\1\2\0019\1\16\0'\3\14\0B\1\2\1K\0\1\0\19load_extension\15extensions\14ui-select\1\0\0\17get_dropdown\21telescope.themes\fpickers\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: moonlight.nvim
time([[Config for moonlight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "moonlight.nvim")
time([[Config for moonlight.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20session_manager\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: gloombuddy
time([[Config for gloombuddy]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "gloombuddy")
time([[Config for gloombuddy]], false)
-- Config for: nord.nvim
time([[Config for nord.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nord.nvim")
time([[Config for nord.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nö\1\0\0\4\0\b\0\n6\0\0\0009\0\1\0009\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\nfloat\1\0\1\vsource\valways\17virtual_text\1\0\1\21update_in_insert\1\1\0\2\vsource\valways\vprefix\b‚óè\vconfig\15diagnostic\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\5\0\t\0\0195\0\0\0006\1\1\0009\1\2\0019\1\3\1\15\0\1\0X\2\2Ä'\1\5\0=\1\4\0006\1\1\0006\2\a\0'\4\6\0B\2\2\2=\2\6\0016\1\1\0009\1\6\0019\1\b\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\frequire\vnotify\f#ffffff\22background_colour\28background_transparency\6g\bvim\1\0\2\vstages\tfade\ftimeout\3–\15\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÑ©\tÔÅ± \fwarning\tÔÅó \nerror\npairs\6 Ü\3\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\0033\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\foffsets\1\0\4\14highlight\14Directory\rfiletype\rNvimTree\ttext\18File Explorer\15text_align\tleft\1\0\t\fnumbers\fordinal\20separator_style\tthin\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\16diagnostics\rnvim_lsp\22buffer_close_icon\bÔôï\19indicator_icon\b‚ñé\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-markdown-preview
time([[Config for nvim-markdown-preview]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-markdown-preview")
time([[Config for nvim-markdown-preview]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ná\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\19init_selection\t<CR>\22scope_incremental\n<TAB>\21node_decremental\t<BS>\21node_incremental\t<CR>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\2\17sync_install\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimQ\0\2\6\0\a\0\n'\2\1\0006\3\2\0009\3\3\0039\5\4\0009\5\5\5B\3\2\2'\4\6\0&\2\4\2=\2\0\1L\1\2\0\6]\tname\vsource\nupper\vstring\6[\tmenuT\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\1¿\rcomplete\nabort\fvisibleT\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\3Ä-\0\0\0009\0\2\0B\0\1\1K\0\1\0\1¿\rcomplete\nclose\fvisibleÇ\b\1\0\v\0<\0á\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0054\a\6\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a5\b\r\0>\b\3\a5\b\14\0>\b\4\a5\b\15\0>\b\5\aB\5\2\2=\5\n\0045\5\20\0009\6\16\0005\b\17\0003\t\18\0=\t\19\bB\6\2\2=\6\21\5=\5\22\0045\5\"\0004\6\n\0009\a\t\0019\a\23\a9\a\24\a>\a\1\0069\a\t\0019\a\23\a9\a\25\a>\a\2\0069\a\t\0019\a\23\a9\a\26\a>\a\3\0069\a\t\0019\a\23\a9\a\27\a>\a\4\0066\a\0\0'\t\28\0B\a\2\0029\a\29\a>\a\5\0069\a\t\0019\a\23\a9\a\30\a>\a\6\0069\a\t\0019\a\23\a9\a\31\a>\a\a\0069\a\t\0019\a\23\a9\a \a>\a\b\0069\a\t\0019\a\23\a9\a!\a>\a\t\6=\6#\5=\5$\0045\5'\0009\6%\0019\6&\6B\6\1\2=\6(\0059\6%\0019\6)\6B\6\1\2=\6*\0059\6%\0019\6+\6B\6\1\2=\6,\0059\6%\0015\b.\0003\t-\0=\t/\b3\t0\0=\t1\bB\6\2\2=\0062\5=\5%\4B\2\2\0019\2\3\0019\0023\2'\0044\0005\0056\0009\6%\0019\0065\0069\0063\6B\6\1\2=\6%\0054\6\3\0005\a7\0>\a\1\6=\6\n\5B\2\3\0019\2\3\0019\0023\2'\0048\0005\0059\0009\6%\0019\0065\0069\0063\6B\6\1\2=\6%\0059\6\t\0019\6\n\0064\b\3\0005\t:\0>\t\1\b4\t\3\0005\n;\0>\n\1\tB\6\3\2=\6\n\5B\2\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\n<C-d>\6c\0\6i\1\0\0\0\t<CR>\fconfirm\n<Tab>\21select_next_item\f<s-Tab>\1\0\0\21select_prev_item\fmapping\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\18recently_used\nscore\nexact\voffset\fcompare\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\nvsnip\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\nÄ\5\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\fmapping\1\0\0\21change_view_mode\1\0\3\bmap\14<leader>v\tdesc\28change result view mode\bcmd2<cmd>lua require('spectre').change_view()<CR>\16run_replace\1\0\3\bmap\14<leader>r\tdesc\16replace all\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\21show_option_menu\1\0\3\bmap\14<leader>o\tdesc\16show option\bcmd3<cmd>lua require('spectre').show_options()<CR>\15enter_file\1\0\3\bmap\t<CR>\tdesc\22goto current file\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\16toggle_line\1\0\0\1\0\3\bmap\add\tdesc\24toggle current item\bcmd2<cmd>lua require('spectre').toggle_line()<CR>\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: vim-multiple-cursors
time([[Config for vim-multiple-cursors]], true)
try_loadstring("\27LJ\2\n°\2\0\0\2\0\r\0\0256\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0'\1\f\0=\1\v\0K\0\1\0\n<ESC>\26multi_cursor_quit_key\n<C-b>\26multi_cursor_skip_key\n<C-p>\26multi_cursor_prev_key\n<C-n>\26multi_cursor_next_key\agb multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0", "config", "vim-multiple-cursors")
time([[Config for vim-multiple-cursors]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nº\4\0\0\5\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0005\1\15\0005\2\16\0=\2\v\0015\2\17\0=\2\18\1=\1\14\0006\0\f\0009\0\r\0)\1\1\0=\1\19\0K\0\1\0\27nvim_tree_add_trailing\vfolder\1\0\b\fsymlink\bÔíÇ\nempty\bÔÑî\fdefault\bÓóø\15empty_open\bÔÑï\17symlink_open\bÓóæ\topen\bÓóæ\17arrow_closed\bÔë†\15arrow_open\bÔëº\1\0\a\frenamed\b‚ûú\14untracked\bÔë°\runmerged\bÓúß\fdeleted\bÔëò\vstaged\b‚úì\fignored\bÔë§\runstaged\bÔëÑ\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\6g\bvim\bgit\1\0\3\venable\2\ftimeout\3Ù\3\vignore\2\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\1\0\1\venable\2\tview\1\0\0\1\0\3\21hide_root_folder\1\vheight\3\30\nwidth\3\30\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: distant.nvim
time([[Config for distant.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\2B\0\2\1K\0\1\0\6*\1\0\0\17chip_default\21distant.settings\nsetup\fdistant\frequire\0", "config", "distant.nvim")
time([[Config for distant.nvim]], false)
-- Config for: vim-startuptime
time([[Config for vim-startuptime]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-startuptime")
time([[Config for vim-startuptime]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\nÕ\t\0\0\n\0,\0z6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0B\1\3\0015\1\b\0006\2\0\0'\4\a\0B\2\2\2=\2\t\0016\2\n\0\18\4\1\0B\2\2\4H\5\nÄ9\a\v\0009\b\f\0069\b\r\b9\t\v\6<\t\b\a9\a\14\0009\b\f\0069\b\15\b9\t\14\6<\t\b\aF\5\3\3R\5Ù6\2\2\0005\3\19\0006\4\2\0009\4\17\0049\4\18\4=\4\20\0036\4\2\0009\4\17\0049\4\21\4=\4\22\0036\4\2\0009\4\17\0049\4\23\4=\4\24\0036\4\2\0009\4\17\0049\4\25\4=\4\26\0035\4\27\0=\4\28\3=\3\16\0026\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5\30\0'\6\31\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5 \0'\6!\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5\"\0'\6#\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5$\0'\6%\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5&\0'\6'\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5(\0'\6)\0006\a\2\0009\a\16\a9\a\28\aB\2\5\0016\2\2\0009\2\16\0029\2\20\2'\4\29\0'\5*\0'\6+\0006\a\2\0009\a\16\a9\a\28\aB\2\5\1K\0\1\0í\1<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>\n<F10>)<cmd>lua require'dap'.run_last()<CR>\t<F9>)<cmd>lua require'dap'.step_out()<CR>\t<F8>*<cmd>lua require'dap'.step_over()<CR>\t<F7>*<cmd>lua require'dap'.step_into()<CR>\t<F6>)<cmd>lua require'dap'.continue()<CR>\t<F5>2<cmd>lua require'dap'.toggle_breakpoint()<CR>\15<leader>db\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\24configurations_name\19configurations\18adapters_name\tname\radapters\npairs\vpython\1\0\0\15dap.python\1\0\4\vtexthl\14TodoFgFIX\nnumhl\5\ttext\b‚äö\vlinehl\5\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\nÛ\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0”\2        if has(\"persistent_undo\")\n            \" Âú® config.lua ‰∏≠ÂÆö‰πâÂ•Ω‰∫Ü undotree_dir ÂÖ®Â±ÄÂèòÈáè\n            let target_path = expand(undotree_dir)\n            if !isdirectory(target_path)\n                call mkdir(target_path, \"p\", 0700)\n            endif\n            let &undodir = target_path\n            set undofile\n    \bcmd\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nü\t\0\2\t\0#\0Ñ\0016\2\0\0005\3\4\0006\4\0\0009\4\2\0049\4\3\4=\4\5\0036\4\0\0009\4\2\0049\4\6\4=\4\a\0036\4\0\0009\4\2\0049\4\b\4=\4\t\0036\4\0\0009\4\2\0049\4\n\4=\4\v\0035\4\f\0=\4\r\3=\3\1\0026\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\15\0'\a\16\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\17\0'\a\18\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\19\0'\a\20\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\21\0'\a\22\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\23\0'\a\24\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\25\0'\a\26\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\27\0'\a\28\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\29\0'\a\30\0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6\31\0'\a \0006\b\0\0009\b\1\b9\b\r\bB\2\6\0016\2\0\0009\2\1\0029\2\a\2\18\4\1\0'\5\14\0'\6!\0'\a\"\0006\b\0\0009\b\1\b9\b\r\bB\2\6\1K\0\1\0E<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>\n<C-d>F<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>\n<C-u>*<cmd>Lspsaga diagnostic_jump_next<CR>\ag]*<cmd>Lspsaga diagnostic_jump_prev<CR>\ag[\31<cmd>Lspsaga hover_doc<CR>\agh\28<cmd>Lspsaga rename<CR>\15<leader>cn7<cmd>Telescope lsp_code_actions theme=dropdown<CR>\15<leader>ca2<cmd>Telescope diagnostics theme=dropdown<CR>\ago5<cmd>Telescope lsp_references theme=dropdown<CR>\agr6<cmd>Telescope lsp_definitions theme=dropdown<CR>\agd\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\bvimä\1\0\0\4\4\5\0\15-\0\0\0-\1\1\0=\1\0\0-\0\0\0005\1\2\0=\1\1\0-\0\0\0-\1\2\0=\1\3\0-\0\3\0\18\2\0\0009\0\4\0-\3\0\0B\0\3\1K\0\1\0\b¿\3¿\1Ä\n¿\nsetup\17capabilities\1\0\1\26debounce_text_changes\3ñ\1\nflags\14on_attachÙ\4\1\0\16\0\30\0H6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0026\2\0\0'\4\6\0B\2\2\0029\2\a\2\18\4\1\0B\2\2\2\18\1\2\0005\2\t\0006\3\0\0'\5\b\0B\3\2\2=\3\n\0026\3\0\0'\5\v\0B\3\2\2=\3\f\0026\3\0\0'\5\r\0B\3\2\2=\3\14\0026\3\0\0'\5\15\0B\3\2\2=\3\16\0026\3\0\0'\5\17\0B\3\2\2=\3\18\0023\3\19\0006\4\20\0\18\6\2\0B\4\2\4H\a\27Ä9\t\21\0\18\v\a\0B\t\2\3\15\0\t\0X\v\20Ä\18\r\n\0009\v\22\n3\14\23\0B\v\3\1\18\r\n\0009\v\24\nB\v\2\2\14\0\v\0X\v\vÄ6\v\2\0009\v\25\v'\r\26\0\18\14\a\0&\r\14\r'\14\27\0005\15\28\0B\v\4\1\18\r\n\0009\v\29\nB\v\2\0012\t\0Ä2\a\0ÄF\a\3\3R\a„2\0\0ÄK\0\1\0\finstall\1\0\1\ntitle\21Language Servers\tWARN\31Install Language Server : \vnotify\17is_installed\0\ron_ready\15get_server\npairs\0\vclangd\15lsp.clangd\14zeta_note\18lsp.zeta_note\ngopls\14lsp.gopls\fpyright\16lsp.pyright\16sumneko_lua\1\0\0\20lsp.sumneko_lua\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\31nvim-lsp-installer.servers\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen6\0\0\2\2\2\0\b-\0\0\0009\0\0\0B\0\1\1-\0\1\0009\0\1\0009\0\0\0B\0\1\1K\0\1\0\1¿\0¿\trepl\nclose6\0\0\2\2\2\0\b-\0\0\0009\0\0\0B\0\1\1-\0\1\0009\0\1\0009\0\0\0B\0\1\1K\0\1\0\1¿\0¿\trepl\ncloseº\4\1\0\b\0\"\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\5\0005\5\4\0=\5\6\4B\2\2\0019\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0026\2\17\0005\3\21\0006\4\17\0009\4\19\0049\4\20\4=\4\22\0036\4\17\0009\4\19\0049\4\23\4=\4\24\0036\4\17\0009\4\19\0049\4\25\4=\4\26\0036\4\17\0009\4\19\0049\4\27\4=\4\28\0035\4\29\0=\4\30\3=\3\18\0026\2\17\0009\2\18\0029\2\22\2'\4\31\0'\5 \0'\6!\0006\a\17\0009\a\18\a9\a\30\aB\2\5\0012\0\0ÄK\0\1\0)<cmd>lua require'dapui'.toggle()<CR>\15<leader>du\6n\topts\1\0\2\fnoremap\2\vsilent\2\ndbmap\24nvim_buf_del_keymap\ndgmap\20nvim_del_keymap\tbmap\24nvim_buf_set_keymap\tgmap\1\0\0\20nvim_set_keymap\bapi\rkeybinds\bvim\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\fsidebar\1\0\0\1\0\1\rposition\nright\nsetup\ndapui\bdap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: one-nvim
time([[Config for one-nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "one-nvim")
time([[Config for one-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'FTerm.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
