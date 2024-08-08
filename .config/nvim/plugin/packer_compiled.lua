-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jw/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/home/jw/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/home/jw/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/home/jw/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jw/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n,\0\2\6\0\3\0\0056\2\0\0009\2\1\2\18\4\0\0'\5\2\0D\2\3\0\6.\15startswith\bvim\15\0\2\3\0\0\0\2+\2\1\0L\2\2\0\15\0\1\2\0\0\0\2+\1\1\0L\1\2\0\15\0\2\3\0\0\0\2+\2\1\0L\2\2\0\15\0\1\2\0\0\0\2+\1\1\0L\1\2\0\v\0\1\1\0\0\0\1L\0\2\0™\15\1\0\6\0005\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0003\4\15\0=\4\16\0033\4\17\0=\4\18\0034\4\3\0005\5\19\0>\5\1\0045\5\20\0>\5\2\4=\4\21\3=\3\22\0024\3\0\0=\3\23\0025\3\25\0003\4\24\0=\4\26\0033\4\27\0=\4\28\0033\4\29\0=\4\30\3=\3\31\0025\3 \0005\4!\0=\4\t\0033\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4\t\3=\3+\0025\3,\0005\4-\0=\4'\0035\4.\0=\4/\0035\0040\0=\4)\0035\0041\0=\4\t\3=\0032\0025\0033\0=\0034\2B\0\2\1K\0\1\0\17keymaps_help\1\0\1\vborder\frounded\rprogress\1\0\1\rwinblend\3\0\1\3\0\0\3\5\4š³æÌ\t™³æý\3\15max_height\1\3\0\0\3\n\4Í™³æ\fÌ™³ÿ\3\1\3\0\0\3(\4š³æÌ\t™³æþ\3\1\0\b\14min_width\0\15min_height\0\vheight\0\16win_options\0\21minimized_border\tnone\vborder\frounded\15max_height\0\14max_width\4Í™³æ\fÌ™³ÿ\3\fpreview\1\0\1\rwinblend\3\0\15min_height\1\3\0\0\3\5\4š³æÌ\t™³æý\3\14min_width\1\3\0\0\3(\4š³æÌ\t™³æþ\3\1\0\b\14min_width\0\15min_height\0\vheight\0\16win_options\0\27update_on_cursor_moved\2\vborder\frounded\15max_height\4Í™³æ\fÌ™³ÿ\3\14max_width\4Í™³æ\fÌ™³ÿ\3\nfloat\roverride\0\1\0\1\rwinblend\3\0\1\0\6\fpadding\3\2\16win_options\0\roverride\0\vborder\frounded\15max_height\3\0\14max_width\3\0\bgit\arm\0\amv\0\badd\1\0\3\amv\0\badd\0\arm\0\0\19extra_scp_args\17view_options\tsort\1\3\0\0\tname\basc\1\3\0\0\ttype\basc\21is_always_hidden\0\19is_hidden_file\0\1\0\5\tsort\0\18natural_order\2\21is_always_hidden\0\19is_hidden_file\0\16show_hidden\1\fkeymaps\1\0\16\n<C-c>\18actions.close\t<CR>\19actions.select\6`\15actions.cd\ag?\22actions.show_help\6~\16actions.tcd\ags\24actions.change_sort\n<C-l>\20actions.refresh\agx\26actions.open_external\ag.\26actions.toggle_hidden\n<C-p>\20actions.preview\ag\\\25actions.toggle_trash\n<C-t>\23actions.select_tab\6-\19actions.parent\n<C-h>\25actions.select_split\6_\21actions.open_cwd\n<C-s>\26actions.select_vsplit\21lsp_file_methods\1\0\2\21autosave_changes\1\15timeout_ms\3è\a\16win_options\1\0\b\18concealcursor\tnvic\17conceallevel\3\3\tlist\1\15foldcolumn\0060\17cursorcolumn\1\nspell\1\15signcolumn\ano\twrap\1\16buf_options\1\0\2\14buflisted\1\14bufhidden\thide\fcolumns\1\2\0\0\ticon\1\0\20\bgit\0\21constrain_cursor\reditable\nfloat\0\rprogress\0\fkeymaps\0#experimental_watch_for_changes\1\17view_options\0\24use_default_keymaps\2\17keymaps_help\0\21lsp_file_methods\0\21cleanup_delay_ms\3Ð\15$prompt_save_on_select_new_entry\2\"skip_confirm_for_simple_edits\1\20delete_to_trash\1\fpreview\0\16win_options\0\16buf_options\0\fcolumns\0\26default_file_explorer\2\19extra_scp_args\0\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jw/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n,\0\2\6\0\3\0\0056\2\0\0009\2\1\2\18\4\0\0'\5\2\0D\2\3\0\6.\15startswith\bvim\15\0\2\3\0\0\0\2+\2\1\0L\2\2\0\15\0\1\2\0\0\0\2+\1\1\0L\1\2\0\15\0\2\3\0\0\0\2+\2\1\0L\2\2\0\15\0\1\2\0\0\0\2+\1\1\0L\1\2\0\v\0\1\1\0\0\0\1L\0\2\0™\15\1\0\6\0005\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0003\4\15\0=\4\16\0033\4\17\0=\4\18\0034\4\3\0005\5\19\0>\5\1\0045\5\20\0>\5\2\4=\4\21\3=\3\22\0024\3\0\0=\3\23\0025\3\25\0003\4\24\0=\4\26\0033\4\27\0=\4\28\0033\4\29\0=\4\30\3=\3\31\0025\3 \0005\4!\0=\4\t\0033\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4\t\3=\3+\0025\3,\0005\4-\0=\4'\0035\4.\0=\4/\0035\0040\0=\4)\0035\0041\0=\4\t\3=\0032\0025\0033\0=\0034\2B\0\2\1K\0\1\0\17keymaps_help\1\0\1\vborder\frounded\rprogress\1\0\1\rwinblend\3\0\1\3\0\0\3\5\4š³æÌ\t™³æý\3\15max_height\1\3\0\0\3\n\4Í™³æ\fÌ™³ÿ\3\1\3\0\0\3(\4š³æÌ\t™³æþ\3\1\0\b\14min_width\0\15min_height\0\vheight\0\16win_options\0\21minimized_border\tnone\vborder\frounded\15max_height\0\14max_width\4Í™³æ\fÌ™³ÿ\3\fpreview\1\0\1\rwinblend\3\0\15min_height\1\3\0\0\3\5\4š³æÌ\t™³æý\3\14min_width\1\3\0\0\3(\4š³æÌ\t™³æþ\3\1\0\b\14min_width\0\15min_height\0\vheight\0\16win_options\0\27update_on_cursor_moved\2\vborder\frounded\15max_height\4Í™³æ\fÌ™³ÿ\3\14max_width\4Í™³æ\fÌ™³ÿ\3\nfloat\roverride\0\1\0\1\rwinblend\3\0\1\0\6\fpadding\3\2\16win_options\0\roverride\0\vborder\frounded\15max_height\3\0\14max_width\3\0\bgit\arm\0\amv\0\badd\1\0\3\amv\0\badd\0\arm\0\0\19extra_scp_args\17view_options\tsort\1\3\0\0\tname\basc\1\3\0\0\ttype\basc\21is_always_hidden\0\19is_hidden_file\0\1\0\5\tsort\0\18natural_order\2\21is_always_hidden\0\19is_hidden_file\0\16show_hidden\1\fkeymaps\1\0\16\n<C-c>\18actions.close\t<CR>\19actions.select\6`\15actions.cd\ag?\22actions.show_help\6~\16actions.tcd\ags\24actions.change_sort\n<C-l>\20actions.refresh\agx\26actions.open_external\ag.\26actions.toggle_hidden\n<C-p>\20actions.preview\ag\\\25actions.toggle_trash\n<C-t>\23actions.select_tab\6-\19actions.parent\n<C-h>\25actions.select_split\6_\21actions.open_cwd\n<C-s>\26actions.select_vsplit\21lsp_file_methods\1\0\2\21autosave_changes\1\15timeout_ms\3è\a\16win_options\1\0\b\18concealcursor\tnvic\17conceallevel\3\3\tlist\1\15foldcolumn\0060\17cursorcolumn\1\nspell\1\15signcolumn\ano\twrap\1\16buf_options\1\0\2\14buflisted\1\14bufhidden\thide\fcolumns\1\2\0\0\ticon\1\0\20\bgit\0\21constrain_cursor\reditable\nfloat\0\rprogress\0\fkeymaps\0#experimental_watch_for_changes\1\17view_options\0\24use_default_keymaps\2\17keymaps_help\0\21lsp_file_methods\0\21cleanup_delay_ms\3Ð\15$prompt_save_on_select_new_entry\2\"skip_confirm_for_simple_edits\1\20delete_to_trash\1\fpreview\0\16win_options\0\16buf_options\0\fcolumns\0\26default_file_explorer\2\19extra_scp_args\0\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
