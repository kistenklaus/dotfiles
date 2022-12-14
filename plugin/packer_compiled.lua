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
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nb\0\0\3\0\6\0\v6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["grammar-guard.nvim"] = {
    config = { "\27LJ\2\n?\4\0\0\b\0\28\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\4\0009\1\5\0015\3\b\0006\4\0\0'\6\6\0B\4\2\0029\4\a\4=\4\a\0036\4\0\0'\6\6\0B\4\2\0029\4\t\4=\4\t\0035\4\n\0=\4\v\0035\4\25\0005\5\r\0005\6\f\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\0055\6\20\0005\a\19\0=\a\21\6=\6\22\0054\6\0\0=\6\23\0054\6\0\0=\6\24\5=\5\26\4=\4\27\3B\1\2\1K\0\1\0\rsettings\tltex\1\0\0\25hiddenFalsePositives\18disabledRules\15dictionary\nen-US\1\0\0\1\4\0\0\15adaptivity\16precomputed\15subproblem\ntrace\1\0\1\vserver\fverbose\20additionalRules\1\0\2\17motherTongue\nen-US\21enablePickyRules\1\fenabled\1\0\3\21setenceCacheSize\3?\15\23diagnosticSeverity\16information\rlanguage\nde-DE\1\5\0\0\nlatex\btex\bbib\rmarkdown\bcmd\1\2\0\0\18/sbin/ltex-ls\17capabilities\1\0\0\14on_attach\22boot.lsp.handlers\nsetup\18grammar_guard\14lspconfig\tinit\18grammar-guard\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/grammar-guard.nvim",
    url = "https://github.com/brymer-meneses/grammar-guard.nvim"
  },
  ["indentpython.vim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/indentpython.vim",
    url = "https://github.com/vim-scripts/indentpython.vim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\6\0\0\6\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\6\0\0\rquickfix\14nvim-tree\15toggleterm\bfzf\20symbols-outline\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3?\a\ftabline\3?\a\vwinbar\3?\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\b???\nright\b???\25component_separators\1\0\2\tleft\b???\nright\b???\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neovim-cmake"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/neovim-cmake",
    url = "https://github.com/Shatur/neovim-cmake"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n?\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17?6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3?+\1\1\0X\2\1?+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3?\tbody\15lsp_expand?\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4?-\1\0\0009\1\1\1B\1\1\1X\1\27?-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4?-\1\1\0009\1\3\1B\1\1\1X\1\18?-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4?-\1\1\0009\1\5\1B\1\1\1X\1\t?-\1\2\0B\1\1\2\15\0\1\0X\2\3?\18\1\0\0B\1\1\1X\1\2?\18\1\0\0B\1\1\1K\0\1\0\1?\3?\4?\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible?\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4?-\1\0\0009\1\1\1B\1\1\1X\1\r?-\1\1\0009\1\2\1)\3??B\1\2\2\15\0\1\0X\2\5?-\1\1\0009\1\3\1)\3??B\1\2\1X\1\2?\18\1\0\0B\1\1\1K\0\1\0\1?\3?\tjump\rjumpable\21select_prev_item\fvisible?\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5?\tname\vsource\1\0\a\fluasnip\14[Snippet]\15dictionary\v[Dict]\vbuffer\r[Buffer]\nspell\f[Spell]\rnvim_lua\n[LSP]\tpath\v[Path]\rnvim_lsp\n[LSP]\tmenu\a%s\vformat\vstring\tkind?\v\1\0\15\0J\0?\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\0012\0{?6\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\t?6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\0012\0m?6\4\1\0'\6\v\0B\4\2\0029\4\f\4B\4\1\0013\4\r\0005\5\14\0009\6\15\0015\b\19\0005\t\17\0003\n\16\0=\n\18\t=\t\20\b5\t\23\0009\n\21\0019\n\22\nB\n\1\2=\n\24\t9\n\21\0019\n\25\nB\n\1\2=\n\26\t9\n\21\0019\f\21\0019\f\27\f)\14??B\f\2\0025\r\28\0B\n\3\2=\n\29\t9\n\21\0019\f\21\0019\f\27\f)\14\1\0B\f\2\0025\r\30\0B\n\3\2=\n\31\t9\n\21\0019\f\21\0019\f \fB\f\1\0025\r!\0B\n\3\2=\n\"\t9\n#\0019\n$\n=\n%\t9\n\21\0015\f'\0009\r\21\0019\r&\rB\r\1\2=\r(\f9\r\21\0019\r)\rB\r\1\2=\r*\fB\n\2\2=\n+\t9\n\21\0019\n,\n5\f-\0B\n\2\2=\n.\t9\n\21\0013\f/\0005\r0\0B\n\3\2=\n1\t9\n\21\0013\f2\0005\r3\0B\n\3\2=\n4\t=\t\21\b5\t6\0005\n5\0=\n7\t3\n8\0=\n9\t=\t:\b4\t\b\0005\n;\0>\n\1\t5\n<\0>\n\2\t5\n=\0>\n\3\t5\n>\0>\n\4\t5\n?\0>\n\5\t5\n@\0>\n\6\t5\nA\0>\n\a\t=\tB\b5\tE\0009\nC\0019\nD\n=\nF\t=\tG\b5\tH\0=\tI\bB\6\2\0012\0\0?K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\15ghost_text\1\16native_menu\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\vbuffer\1\0\1\tname\15dictionary\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\b???\16Constructor\b???\15EnumMember\b???\rFunction\b???\vMethod\6m\14Reference\b???\tText\b???\tFile\b???\vFolder\b???\nColor\b???\fSnippet\b???\fKeyword\b???\tEnum\b???\nValue\b???\tUnit\b???\rProperty\b???\vModule\b???\18TypeParameter\b???\14Interface\b???\rOperator\b???\nClass\b???\nEvent\b???\rVariable\b???\vStruct\b???\nField\b???\0\14lazy_load luasnip/loaders/from_vscode\30failed to require luasnip\fluasnip\nERROR\vlevels\blog\26failed to require cmp\vnotify\bvim\bcmp\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n?\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\19marker_padding\2\21operator_mapping\agc\30comment_chunk_text_object\aic\17line_mapping\bgcc\20create_mappings\2\"comment_empty_trim_whitespace\2\18comment_empty\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n?\2\0\0\b\0\v\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\r?\n\3\0\0X\4\v?\n\3\2\0X\4\t?6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\1K\0\1\0K\0\1\0\31failed to require boot.lsp\rboot.lsp\nERROR\vlevels\blog failed to require lspconfig\vnotify\bvim\14lspconfig\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n?\a\0\0\15\0)\0E6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1?K\0\1\0006\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1?K\0\1\0009\4\4\0039\5\5\0015\a\6\0005\b\a\0=\b\b\a5\b\t\0=\b\n\a5\b\v\0004\t\0\0=\t\f\b=\b\r\a5\b\14\0=\b\15\a5\b\16\0005\t\17\0004\n\4\0005\v\19\0005\f\18\0=\f\20\v\18\f\4\0'\14\21\0B\f\2\2=\f\22\v>\v\1\n5\v\23\0\18\f\4\0'\14\24\0B\f\2\2=\f\22\v>\v\2\n5\v\25\0\18\f\4\0'\14\26\0B\f\2\2=\f\22\v>\v\3\n=\n\27\t=\t\28\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\aB\5\2\0015\5\"\0006\6#\0009\6$\0069\6%\6\18\a\6\0'\t&\0'\n'\0'\v(\0\18\f\5\0B\a\5\1K\0\1\0\24:NvimTreeToggle<cr>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\1\tview\rmappings\tlist\vvsplit\1\0\1\bkey\6v\15close_node\1\0\1\bkey\6h\acb\tedit\bkey\1\0\0\1\4\0\0\6l\t<CR>\6o\1\0\1\16custom_only\1\1\0\4\19relativenumber\1\vnumber\1\tside\tleft\21hide_root_folder\1\bgit\1\0\3\vignore\2\ftimeout\3?\3\venable\2\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\16diagnostics\1\0\1\venable\2\23ignore_ft_on_setup\1\4\0\0\rstartify\14dashboard\nalpha\1\0\b\15update_cwd\2\18hijack_cursor\1\16open_on_tab\1\23sync_root_with_cwd\2\fsort_by\tname\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n?\f\0\0\v\0W\1?\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\1\0'\4\t\0B\2\2\0029\3\n\0015\5J\0005\6\v\0005\a\f\0=\a\r\0065\a9\0005\b\15\0009\t\14\2=\t\16\b9\t\17\2=\t\18\b9\t\19\2=\t\20\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\19\2=\t\25\b9\t\21\2=\t\26\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t%\2=\t&\b9\t'\2=\t(\b9\t)\2=\t*\b9\t+\0029\n,\2 \t\n\t=\t-\b9\t+\0029\n.\2 \t\n\t=\t/\b9\t0\0029\n1\2 \t\n\t=\t2\b9\t3\0029\n1\2 \t\n\t=\t4\b9\t5\2=\t6\b9\t7\2=\t8\b=\b:\a5\b;\0009\t\23\2=\t<\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t+\0029\n,\2 \t\n\t=\t-\b9\t+\0029\n.\2 \t\n\t=\t/\b9\t0\0029\n1\2 \t\n\t=\t2\b9\t3\0029\n1\2 \t\n\t=\t4\b9\t\19\2=\t=\b9\t\21\2=\t>\b9\t?\2=\t@\b9\tA\2=\tB\b9\tC\2=\tD\b9\t\19\2=\t\25\b9\t\21\2=\t\26\b9\t?\2=\tE\b9\tC\2=\tF\b9\t#\2=\t$\b9\t%\2=\t&\b9\t'\2=\t(\b9\t)\2=\t*\b9\t7\2=\tG\b=\bH\a=\aI\6=\6K\0054\6\0\0=\6L\0055\6P\0005\aN\0005\bM\0=\bO\a=\aQ\0064\a\3\0006\b\1\0'\nR\0B\b\2\0029\bS\b4\n\0\0B\b\2\0?\b\0\0=\aT\6=\6U\5B\3\2\0019\3V\1'\5Q\0B\3\2\0019\3V\1'\5T\0B\3\2\1K\0\1\0\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\fpickers\rdefaults\1\0\0\rmappings\6n\6?\6g\agg\6l\19move_to_bottom\6m\19move_to_middle\6h\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<c-_>\14which_key\n<c-l>\17complete_tag\n<m-q>\28send_selected_to_qflist\n<c-q>\16open_qflist\19send_to_qflist\f<s-tab>\26move_selection_better\n<tab>\25move_selection_worse\21toggle_selection\15<pagedown>\27results_scrolling_down\r<pageup>\25results_scrolling_up\n<c-d>\27preview_scrolling_down\n<c-u>\25preview_scrolling_up\n<c-t>\15select_tab\n<c-v>\20select_vertical\n<c-x>\22select_horizontal\t<cr>\19select_default\t<up>\v<down>\n<c-c>\nclose\n<c-k>\28move_selection_previous\n<c-j>\24move_selection_next\n<c-p>\23cycle_history_prev\n<c-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\20selection_caret\t??? \18prompt_prefix\t??? \nsetup\22telescope.actions\nerror\vlevels\blog failed to require telescope\vnotify\bvim\14telescope\frequire\npcall\3????\4\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname?\2\1\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0036\4\5\0009\4\6\0049\4\a\4=\4\a\0035\4\b\0003\5\t\0=\5\n\4=\4\v\3B\1\2\1K\0\1\0\vwinbar\19name_formatter\0\1\0\1\fenabled\1\nshell\6o\bvim\20shade_filetypes\1\0\r\20start_in_insert\2\20shade_terminals\2\14autochdir\1\17hide_numbers\2\17open_mapping\n<C-t>\tsize\3\20\16auto_scroll\2\18close_on_exit\2\14direction\nfloat\17persist_mode\2\17persist_size\2\22terminal_mappings\2\20insert_mappings\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-plugin-AnsiEsc"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/vim-plugin-AnsiEsc",
    url = "https://github.com/powerman/vim-plugin-AnsiEsc"
  },
  vimtex = {
    config = { "\27LJ\2\n?\1\0\0\a\0\f\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0009\1\a\0015\3\n\0006\4\4\0'\6\b\0B\4\2\0029\4\t\4=\4\t\0036\4\4\0'\6\b\0B\4\2\0029\4\v\4=\4\v\3B\1\2\1K\0\1\0\17capabilities\1\0\0\14on_attach\22boot.lsp.handlers\nsetup\vtexlab\14lspconfig\frequire\vokular\31vimtex_view_general_viewer\6g\bvim\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n?\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\19marker_padding\2\21operator_mapping\agc\30comment_chunk_text_object\aic\17line_mapping\bgcc\20create_mappings\2\"comment_empty_trim_whitespace\2\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\6\0\0\6\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\6\0\0\rquickfix\14nvim-tree\15toggleterm\bfzf\20symbols-outline\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3?\a\ftabline\3?\a\vwinbar\3?\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\b???\nright\b???\25component_separators\1\0\2\tleft\b???\nright\b???\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n?\1\0\0\a\0\f\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0009\1\a\0015\3\n\0006\4\4\0'\6\b\0B\4\2\0029\4\t\4=\4\t\0036\4\4\0'\6\b\0B\4\2\0029\4\v\4=\4\v\3B\1\2\1K\0\1\0\17capabilities\1\0\0\14on_attach\22boot.lsp.handlers\nsetup\vtexlab\14lspconfig\frequire\vokular\31vimtex_view_general_viewer\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: grammar-guard.nvim
time([[Config for grammar-guard.nvim]], true)
try_loadstring("\27LJ\2\n?\4\0\0\b\0\28\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\4\0009\1\5\0015\3\b\0006\4\0\0'\6\6\0B\4\2\0029\4\a\4=\4\a\0036\4\0\0'\6\6\0B\4\2\0029\4\t\4=\4\t\0035\4\n\0=\4\v\0035\4\25\0005\5\r\0005\6\f\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\0055\6\20\0005\a\19\0=\a\21\6=\6\22\0054\6\0\0=\6\23\0054\6\0\0=\6\24\5=\5\26\4=\4\27\3B\1\2\1K\0\1\0\rsettings\tltex\1\0\0\25hiddenFalsePositives\18disabledRules\15dictionary\nen-US\1\0\0\1\4\0\0\15adaptivity\16precomputed\15subproblem\ntrace\1\0\1\vserver\fverbose\20additionalRules\1\0\2\17motherTongue\nen-US\21enablePickyRules\1\fenabled\1\0\3\21setenceCacheSize\3?\15\23diagnosticSeverity\16information\rlanguage\nde-DE\1\5\0\0\nlatex\btex\bbib\rmarkdown\bcmd\1\2\0\0\18/sbin/ltex-ls\17capabilities\1\0\0\14on_attach\22boot.lsp.handlers\nsetup\18grammar_guard\14lspconfig\tinit\18grammar-guard\frequire\0", "config", "grammar-guard.nvim")
time([[Config for grammar-guard.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\6\0\v6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname?\2\1\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0036\4\5\0009\4\6\0049\4\a\4=\4\a\0035\4\b\0003\5\t\0=\5\n\4=\4\v\3B\1\2\1K\0\1\0\vwinbar\19name_formatter\0\1\0\1\fenabled\1\nshell\6o\bvim\20shade_filetypes\1\0\r\20start_in_insert\2\20shade_terminals\2\14autochdir\1\17hide_numbers\2\17open_mapping\n<C-t>\tsize\3\20\16auto_scroll\2\18close_on_exit\2\14direction\nfloat\17persist_mode\2\17persist_size\2\22terminal_mappings\2\20insert_mappings\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n?\f\0\0\v\0W\1?\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\1\0'\4\t\0B\2\2\0029\3\n\0015\5J\0005\6\v\0005\a\f\0=\a\r\0065\a9\0005\b\15\0009\t\14\2=\t\16\b9\t\17\2=\t\18\b9\t\19\2=\t\20\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\19\2=\t\25\b9\t\21\2=\t\26\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t%\2=\t&\b9\t'\2=\t(\b9\t)\2=\t*\b9\t+\0029\n,\2 \t\n\t=\t-\b9\t+\0029\n.\2 \t\n\t=\t/\b9\t0\0029\n1\2 \t\n\t=\t2\b9\t3\0029\n1\2 \t\n\t=\t4\b9\t5\2=\t6\b9\t7\2=\t8\b=\b:\a5\b;\0009\t\23\2=\t<\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t+\0029\n,\2 \t\n\t=\t-\b9\t+\0029\n.\2 \t\n\t=\t/\b9\t0\0029\n1\2 \t\n\t=\t2\b9\t3\0029\n1\2 \t\n\t=\t4\b9\t\19\2=\t=\b9\t\21\2=\t>\b9\t?\2=\t@\b9\tA\2=\tB\b9\tC\2=\tD\b9\t\19\2=\t\25\b9\t\21\2=\t\26\b9\t?\2=\tE\b9\tC\2=\tF\b9\t#\2=\t$\b9\t%\2=\t&\b9\t'\2=\t(\b9\t)\2=\t*\b9\t7\2=\tG\b=\bH\a=\aI\6=\6K\0054\6\0\0=\6L\0055\6P\0005\aN\0005\bM\0=\bO\a=\aQ\0064\a\3\0006\b\1\0'\nR\0B\b\2\0029\bS\b4\n\0\0B\b\2\0?\b\0\0=\aT\6=\6U\5B\3\2\0019\3V\1'\5Q\0B\3\2\0019\3V\1'\5T\0B\3\2\1K\0\1\0\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\fpickers\rdefaults\1\0\0\rmappings\6n\6?\6g\agg\6l\19move_to_bottom\6m\19move_to_middle\6h\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<c-_>\14which_key\n<c-l>\17complete_tag\n<m-q>\28send_selected_to_qflist\n<c-q>\16open_qflist\19send_to_qflist\f<s-tab>\26move_selection_better\n<tab>\25move_selection_worse\21toggle_selection\15<pagedown>\27results_scrolling_down\r<pageup>\25results_scrolling_up\n<c-d>\27preview_scrolling_down\n<c-u>\25preview_scrolling_up\n<c-t>\15select_tab\n<c-v>\20select_vertical\n<c-x>\22select_horizontal\t<cr>\19select_default\t<up>\v<down>\n<c-c>\nclose\n<c-k>\28move_selection_previous\n<c-j>\24move_selection_next\n<c-p>\23cycle_history_prev\n<c-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\20selection_caret\t??? \18prompt_prefix\t??? \nsetup\22telescope.actions\nerror\vlevels\blog failed to require telescope\vnotify\bvim\14telescope\frequire\npcall\3????\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n?\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17?6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3?+\1\1\0X\2\1?+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3?\tbody\15lsp_expand?\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4?-\1\0\0009\1\1\1B\1\1\1X\1\27?-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4?-\1\1\0009\1\3\1B\1\1\1X\1\18?-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4?-\1\1\0009\1\5\1B\1\1\1X\1\t?-\1\2\0B\1\1\2\15\0\1\0X\2\3?\18\1\0\0B\1\1\1X\1\2?\18\1\0\0B\1\1\1K\0\1\0\1?\3?\4?\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible?\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4?-\1\0\0009\1\1\1B\1\1\1X\1\r?-\1\1\0009\1\2\1)\3??B\1\2\2\15\0\1\0X\2\5?-\1\1\0009\1\3\1)\3??B\1\2\1X\1\2?\18\1\0\0B\1\1\1K\0\1\0\1?\3?\tjump\rjumpable\21select_prev_item\fvisible?\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5?\tname\vsource\1\0\a\fluasnip\14[Snippet]\15dictionary\v[Dict]\vbuffer\r[Buffer]\nspell\f[Spell]\rnvim_lua\n[LSP]\tpath\v[Path]\rnvim_lsp\n[LSP]\tmenu\a%s\vformat\vstring\tkind?\v\1\0\15\0J\0?\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\0012\0{?6\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\t?6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\0012\0m?6\4\1\0'\6\v\0B\4\2\0029\4\f\4B\4\1\0013\4\r\0005\5\14\0009\6\15\0015\b\19\0005\t\17\0003\n\16\0=\n\18\t=\t\20\b5\t\23\0009\n\21\0019\n\22\nB\n\1\2=\n\24\t9\n\21\0019\n\25\nB\n\1\2=\n\26\t9\n\21\0019\f\21\0019\f\27\f)\14??B\f\2\0025\r\28\0B\n\3\2=\n\29\t9\n\21\0019\f\21\0019\f\27\f)\14\1\0B\f\2\0025\r\30\0B\n\3\2=\n\31\t9\n\21\0019\f\21\0019\f \fB\f\1\0025\r!\0B\n\3\2=\n\"\t9\n#\0019\n$\n=\n%\t9\n\21\0015\f'\0009\r\21\0019\r&\rB\r\1\2=\r(\f9\r\21\0019\r)\rB\r\1\2=\r*\fB\n\2\2=\n+\t9\n\21\0019\n,\n5\f-\0B\n\2\2=\n.\t9\n\21\0013\f/\0005\r0\0B\n\3\2=\n1\t9\n\21\0013\f2\0005\r3\0B\n\3\2=\n4\t=\t\21\b5\t6\0005\n5\0=\n7\t3\n8\0=\n9\t=\t:\b4\t\b\0005\n;\0>\n\1\t5\n<\0>\n\2\t5\n=\0>\n\3\t5\n>\0>\n\4\t5\n?\0>\n\5\t5\n@\0>\n\6\t5\nA\0>\n\a\t=\tB\b5\tE\0009\nC\0019\nD\n=\nF\t=\tG\b5\tH\0=\tI\bB\6\2\0012\0\0?K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\15ghost_text\1\16native_menu\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\vbuffer\1\0\1\tname\15dictionary\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\b???\16Constructor\b???\15EnumMember\b???\rFunction\b???\vMethod\6m\14Reference\b???\tText\b???\tFile\b???\vFolder\b???\nColor\b???\fSnippet\b???\fKeyword\b???\tEnum\b???\nValue\b???\tUnit\b???\rProperty\b???\vModule\b???\18TypeParameter\b???\14Interface\b???\rOperator\b???\nClass\b???\nEvent\b???\rVariable\b???\vStruct\b???\nField\b???\0\14lazy_load luasnip/loaders/from_vscode\30failed to require luasnip\fluasnip\nERROR\vlevels\blog\26failed to require cmp\vnotify\bvim\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n?\2\0\0\b\0\v\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\t?6\2\3\0009\2\4\2'\4\5\0006\5\3\0009\5\6\0059\5\a\0059\5\b\5B\2\3\1K\0\1\0006\2\0\0006\4\1\0'\5\t\0B\2\3\3\14\0\2\0X\4\r?\n\3\0\0X\4\v?\n\3\2\0X\4\t?6\4\3\0009\4\4\4'\6\n\0006\a\3\0009\a\6\a9\a\a\a9\a\b\aB\4\3\1K\0\1\0K\0\1\0\31failed to require boot.lsp\rboot.lsp\nERROR\vlevels\blog failed to require lspconfig\vnotify\bvim\14lspconfig\frequire\npcall\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n?\a\0\0\15\0)\0E6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1?K\0\1\0006\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1?K\0\1\0009\4\4\0039\5\5\0015\a\6\0005\b\a\0=\b\b\a5\b\t\0=\b\n\a5\b\v\0004\t\0\0=\t\f\b=\b\r\a5\b\14\0=\b\15\a5\b\16\0005\t\17\0004\n\4\0005\v\19\0005\f\18\0=\f\20\v\18\f\4\0'\14\21\0B\f\2\2=\f\22\v>\v\1\n5\v\23\0\18\f\4\0'\14\24\0B\f\2\2=\f\22\v>\v\2\n5\v\25\0\18\f\4\0'\14\26\0B\f\2\2=\f\22\v>\v\3\n=\n\27\t=\t\28\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\aB\5\2\0015\5\"\0006\6#\0009\6$\0069\6%\6\18\a\6\0'\t&\0'\n'\0'\v(\0\18\f\5\0B\a\5\1K\0\1\0\24:NvimTreeToggle<cr>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\1\tview\rmappings\tlist\vvsplit\1\0\1\bkey\6v\15close_node\1\0\1\bkey\6h\acb\tedit\bkey\1\0\0\1\4\0\0\6l\t<CR>\6o\1\0\1\16custom_only\1\1\0\4\19relativenumber\1\vnumber\1\tside\tleft\21hide_root_folder\1\bgit\1\0\3\vignore\2\ftimeout\3?\3\venable\2\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\16diagnostics\1\0\1\venable\2\23ignore_ft_on_setup\1\4\0\0\rstartify\14dashboard\nalpha\1\0\b\15update_cwd\2\18hijack_cursor\1\16open_on_tab\1\23sync_root_with_cwd\2\fsort_by\tname\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0", "config", "flutter-tools.nvim")
time([[Config for flutter-tools.nvim]], false)

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
