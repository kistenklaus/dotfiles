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
local package_path_str = "/home/karl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/karl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/karl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/karl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/karl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n—\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17€6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\27€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\18€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\t€-\1\2\0B\1\1\2\15\0\1\0X\2\3€\18\1\0\0B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\4À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\tjump\rjumpable\21select_prev_item\fvisible·\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5À\tname\vsource\1\0\5\tpath\v[Path]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\rnvim_lua\n[LSP]\rnvim_lsp\n[LSP]\tmenu\a%s\vformat\vstring\tkindÄ\v\1\0\15\0H\0ˆ\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t€6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\0012\0w€6\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\t€6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\0012\0i€6\4\1\0'\6\v\0B\4\2\0029\4\f\4B\4\1\0013\4\r\0005\5\14\0009\6\15\0015\b\19\0005\t\17\0003\n\16\0=\n\18\t=\t\20\b5\t\23\0009\n\21\0019\n\22\nB\n\1\2=\n\24\t9\n\21\0019\n\25\nB\n\1\2=\n\26\t9\n\21\0019\f\21\0019\f\27\f)\14ÿÿB\f\2\0025\r\28\0B\n\3\2=\n\29\t9\n\21\0019\f\21\0019\f\27\f)\14\1\0B\f\2\0025\r\30\0B\n\3\2=\n\31\t9\n\21\0019\f\21\0019\f \fB\f\1\0025\r!\0B\n\3\2=\n\"\t9\n#\0019\n$\n=\n%\t9\n\21\0015\f'\0009\r\21\0019\r&\rB\r\1\2=\r(\f9\r\21\0019\r)\rB\r\1\2=\r*\fB\n\2\2=\n+\t9\n\21\0019\n,\n5\f-\0B\n\2\2=\n.\t9\n\21\0013\f/\0005\r0\0B\n\3\2=\n1\t9\n\21\0013\f2\0005\r3\0B\n\3\2=\n4\t=\t\21\b5\t6\0005\n5\0=\n7\t3\n8\0=\n9\t=\t:\b4\t\6\0005\n;\0>\n\1\t5\n<\0>\n\2\t5\n=\0>\n\3\t5\n>\0>\n\4\t5\n?\0>\n\5\t=\t@\b5\tC\0009\nA\0019\nB\n=\nD\t=\tE\b5\tF\0=\tG\bB\6\2\0012\0\0€K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\15ghost_text\1\16native_menu\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tText\bï¾\tFile\bïœ˜\nColor\bï£—\14Reference\bï’\fSnippet\bïƒ„\vFolder\bïŠ\fKeyword\bï Š\15EnumMember\bï…\tEnum\bï…\nValue\bï¢Ÿ\tUnit\bîˆŸ\rProperty\bï‚­\vModule\bï’‡\18TypeParameter\bïžƒ\14Interface\bïƒ¨\rOperator\bïš”\nClass\bï –\nEvent\bïƒ§\rVariable\bïš¦\vStruct\bï†³\nField\bîœ–\rConstant\bï›¼\16Constructor\bï¥\rFunction\bïž”\vMethod\6m\0\14lazy_load luasnip/loaders/from_vscode\30failed to require luasnip\fluasnip\nERROR\vlevels\blog\26failed to require cmp\vnotify\bvim\bcmp\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nå\2\0\0\n\0\r\00026\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t€6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\r€\n\3\0\0X\4\v€\n\3\2\0X\4\t€6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\1K\0\1\0006\4\0\0009\6\v\3\18\a\3\0B\4\3\3\14\0\4\0X\6\t€6\6\3\0009\6\4\6'\b\f\0006\t\3\0009\t\6\t9\t\a\t9\t\b\tB\6\3\1K\0\1\0K\0\1\0!failed to initalize boot.lsp\tinit\31failed to require boot.lsp\rboot.lsp\nERROR\vlevels\blog failed to require lspconfig\vnotify\bvim\14lspconfig\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n\a\0\0\15\0)\0E6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0006\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1€K\0\1\0009\4\4\0039\5\5\0015\a\6\0005\b\a\0=\b\b\a5\b\t\0=\b\n\a5\b\v\0004\t\0\0=\t\f\b=\b\r\a5\b\14\0=\b\15\a5\b\16\0005\t\17\0004\n\4\0005\v\19\0005\f\18\0=\f\20\v\18\f\4\0'\14\21\0B\f\2\2=\f\22\v>\v\1\n5\v\23\0\18\f\4\0'\14\24\0B\f\2\2=\f\22\v>\v\2\n5\v\25\0\18\f\4\0'\14\26\0B\f\2\2=\f\22\v>\v\3\n=\n\27\t=\t\28\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\aB\5\2\0015\5\"\0006\6#\0009\6$\0069\6%\6\18\a\6\0'\t&\0'\n'\0'\v(\0\18\f\5\0B\a\5\1K\0\1\0\24:NvimTreeToggle<cr>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\1\tview\rmappings\tlist\vvsplit\1\0\1\bkey\6v\15close_node\1\0\1\bkey\6h\acb\tedit\bkey\1\0\0\1\4\0\0\6l\t<CR>\6o\1\0\1\16custom_only\1\1\0\4\21hide_root_folder\1\19relativenumber\1\vnumber\1\tside\tleft\bgit\1\0\3\venable\2\vignore\2\ftimeout\3ô\3\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\16diagnostics\1\0\1\venable\2\23ignore_ft_on_setup\1\4\0\0\rstartify\14dashboard\nalpha\1\0\b\23sync_root_with_cwd\2\fsort_by\tname\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\2\18hijack_cursor\1\16open_on_tab\1\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nå\2\0\0\n\0\r\00026\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t€6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\r€\n\3\0\0X\4\v€\n\3\2\0X\4\t€6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\1K\0\1\0006\4\0\0009\6\v\3\18\a\3\0B\4\3\3\14\0\4\0X\6\t€6\6\3\0009\6\4\6'\b\f\0006\t\3\0009\t\6\t9\t\a\t9\t\b\tB\6\3\1K\0\1\0K\0\1\0!failed to initalize boot.lsp\tinit\31failed to require boot.lsp\rboot.lsp\nERROR\vlevels\blog failed to require lspconfig\vnotify\bvim\14lspconfig\frequire\npcall\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n—\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17€6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\27€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\18€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\t€-\1\2\0B\1\1\2\15\0\1\0X\2\3€\18\1\0\0B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\4À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\tjump\rjumpable\21select_prev_item\fvisible·\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5À\tname\vsource\1\0\5\tpath\v[Path]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\rnvim_lua\n[LSP]\rnvim_lsp\n[LSP]\tmenu\a%s\vformat\vstring\tkindÄ\v\1\0\15\0H\0ˆ\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t€6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\0012\0w€6\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\t€6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\0012\0i€6\4\1\0'\6\v\0B\4\2\0029\4\f\4B\4\1\0013\4\r\0005\5\14\0009\6\15\0015\b\19\0005\t\17\0003\n\16\0=\n\18\t=\t\20\b5\t\23\0009\n\21\0019\n\22\nB\n\1\2=\n\24\t9\n\21\0019\n\25\nB\n\1\2=\n\26\t9\n\21\0019\f\21\0019\f\27\f)\14ÿÿB\f\2\0025\r\28\0B\n\3\2=\n\29\t9\n\21\0019\f\21\0019\f\27\f)\14\1\0B\f\2\0025\r\30\0B\n\3\2=\n\31\t9\n\21\0019\f\21\0019\f \fB\f\1\0025\r!\0B\n\3\2=\n\"\t9\n#\0019\n$\n=\n%\t9\n\21\0015\f'\0009\r\21\0019\r&\rB\r\1\2=\r(\f9\r\21\0019\r)\rB\r\1\2=\r*\fB\n\2\2=\n+\t9\n\21\0019\n,\n5\f-\0B\n\2\2=\n.\t9\n\21\0013\f/\0005\r0\0B\n\3\2=\n1\t9\n\21\0013\f2\0005\r3\0B\n\3\2=\n4\t=\t\21\b5\t6\0005\n5\0=\n7\t3\n8\0=\n9\t=\t:\b4\t\6\0005\n;\0>\n\1\t5\n<\0>\n\2\t5\n=\0>\n\3\t5\n>\0>\n\4\t5\n?\0>\n\5\t=\t@\b5\tC\0009\nA\0019\nB\n=\nD\t=\tE\b5\tF\0=\tG\bB\6\2\0012\0\0€K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\15ghost_text\1\16native_menu\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tText\bï¾\tFile\bïœ˜\nColor\bï£—\14Reference\bï’\fSnippet\bïƒ„\vFolder\bïŠ\fKeyword\bï Š\15EnumMember\bï…\tEnum\bï…\nValue\bï¢Ÿ\tUnit\bîˆŸ\rProperty\bï‚­\vModule\bï’‡\18TypeParameter\bïžƒ\14Interface\bïƒ¨\rOperator\bïš”\nClass\bï –\nEvent\bïƒ§\rVariable\bïš¦\vStruct\bï†³\nField\bîœ–\rConstant\bï›¼\16Constructor\bï¥\rFunction\bïž”\vMethod\6m\0\14lazy_load luasnip/loaders/from_vscode\30failed to require luasnip\fluasnip\nERROR\vlevels\blog\26failed to require cmp\vnotify\bvim\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n\a\0\0\15\0)\0E6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0006\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1€K\0\1\0009\4\4\0039\5\5\0015\a\6\0005\b\a\0=\b\b\a5\b\t\0=\b\n\a5\b\v\0004\t\0\0=\t\f\b=\b\r\a5\b\14\0=\b\15\a5\b\16\0005\t\17\0004\n\4\0005\v\19\0005\f\18\0=\f\20\v\18\f\4\0'\14\21\0B\f\2\2=\f\22\v>\v\1\n5\v\23\0\18\f\4\0'\14\24\0B\f\2\2=\f\22\v>\v\2\n5\v\25\0\18\f\4\0'\14\26\0B\f\2\2=\f\22\v>\v\3\n=\n\27\t=\t\28\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\aB\5\2\0015\5\"\0006\6#\0009\6$\0069\6%\6\18\a\6\0'\t&\0'\n'\0'\v(\0\18\f\5\0B\a\5\1K\0\1\0\24:NvimTreeToggle<cr>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\1\tview\rmappings\tlist\vvsplit\1\0\1\bkey\6v\15close_node\1\0\1\bkey\6h\acb\tedit\bkey\1\0\0\1\4\0\0\6l\t<CR>\6o\1\0\1\16custom_only\1\1\0\4\21hide_root_folder\1\19relativenumber\1\vnumber\1\tside\tleft\bgit\1\0\3\venable\2\vignore\2\ftimeout\3ô\3\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\16diagnostics\1\0\1\venable\2\23ignore_ft_on_setup\1\4\0\0\rstartify\14dashboard\nalpha\1\0\b\23sync_root_with_cwd\2\fsort_by\tname\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\2\18hijack_cursor\1\16open_on_tab\1\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

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
