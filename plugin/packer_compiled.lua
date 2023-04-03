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
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["clangd_extensions.nvim"] = {
    config = { "\27LJ\2\nó\6\0\0\6\0\28\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0005\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\0\2\0016\0\21\0009\0\22\0009\0\23\0'\2\24\0'\3\25\0'\4\26\0004\5\0\0B\0\5\0016\0\21\0009\0\22\0009\0\23\0'\2\27\0'\3\25\0'\4\26\0004\5\0\0B\0\5\1K\0\1\0\6i :ClangdToggleInlayHints<cr>\n<A-i>\6n\bset\vkeymap\bvim\15extensions\16symbol_info\1\0\1\vborder\tnone\17memory_usage\1\0\1\vborder\tnone\bast\15highlights\1\0\1\vdetail\fComment\15kind_icons\1\0\a\20TranslationUnit\bî«©\21TemplateTypeParm\bîª’\rRecovery\bîª‡\25TemplateTemplateParm\bîª’\rCompound\bîª‹\24TemplateParamObject\bîª’\18PackExpansion\bî©¼\15role_icons\1\0\0\1\0\6\14specifier\bî®†\14statement\bîª†\22template argument\bîª’\ttype\bî­£\15expression\bî©±\16declaration\bîªŒ\16inlay_hints\1\0\v\rpriority\3d\24right_align_padding\3\a\16right_align\1\26max_len_align_padding\3\1\18max_len_align\1\23other_hints_prefix\b=> \27parameter_hints_prefix\b<- \25show_parameter_hints\2\14highlight\fComment\30only_current_line_autocmd\15CursorHold\22only_current_line\1\1\0\1\17autoSetHints\2\vserver\1\0\0\nsetup\22clangd_extensions\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
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
  ["compiler-explorer.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/compiler-explorer.nvim",
    url = "https://github.com/krady21/compiler-explorer.nvim"
  },
  ["deadcolumn.nvim"] = {
    config = { "\27LJ\2\nã\2\0\0\4\0\19\0\0245\0\0\0005\1\1\0=\1\2\0005\1\3\0005\2\4\0=\2\5\1=\1\6\0005\1\a\0005\2\b\0=\2\5\1=\1\t\0005\1\n\0=\1\v\0006\1\f\0009\1\r\1'\2\15\0=\2\14\0016\1\16\0'\3\17\0B\1\2\0029\1\18\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\15deadcolumn\frequire\a80\16colorcolumn\bopt\bvim\nextra\1\0\0\fwarning\1\3\0\0\nError\15background\1\0\2\14colorcode\f#FF0000\nalpha\4š³æÌ\t™³æþ\3\rblending\fhlgroup\1\3\0\0\vNormal\15background\1\0\2\14colorcode\f#000000\14threshold\4\0€€ ÿ\3\nmodes\1\n\0\0\6i\aic\aix\6R\aRc\aRx\aRv\bRvc\bRvx\1\0\1\nscope\tline\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/deadcolumn.nvim",
    url = "https://github.com/Bekaboo/deadcolumn.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n¼\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\ndelay\3è\a\22ignore_whitespace\1\18virt_text_pos\beol\14virt_text\2\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\nsigns\1\0\n\nnumhl\1!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\15signcolumn\2\18sign_priority\3\6\20update_debounce\3d\20max_file_length\3À¸\2\23current_line_blame\1\24attach_to_untracked\2\14word_diff\1\vlinehl\1\14untracked\1\0\1\ttext\bâ”†\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\bâ”‚\badd\1\0\0\1\0\1\ttext\bâ”‚\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\5\0B\0\2\1K\0\1\0\1À\rnav_fileæ\2\1\0\a\0\21\00096\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\19\0003\6\20\0B\2\4\0012\0\0€K\0\1\0\0\n<A-5>\0\n<A-4>\0\n<A-3>\0\n<A-2>\0\n<A-1>\22toggle_quick_menu\n<A-e>\radd_file\n<A-h>\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0" },
    keys = { { "", "<A-h>" }, { "", "<A-e>" }, { "", "<A-1>" }, { "", "<A-2>" }, { "", "<A-3>" }, { "", "<A-4>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16declaration\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19implementation\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vformat\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvimç\4\1\2\r\2 \0y5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\6\0003\a\a\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\b\0003\a\t\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\n\0003\a\v\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\f\0003\a\r\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\14\0003\a\15\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\16\0003\a\17\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\19\0003\a\20\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\19\0003\a\21\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\22\0003\a\23\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\24\0003\a\25\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\26\0003\a\28\0\18\b\2\0B\3\5\1)\3\1\0-\4\0\0\21\4\4\0)\5\1\0M\3\17€-\a\1\0-\t\0\0008\t\6\tB\a\2\0029\b\29\0\5\a\b\0X\b\t€6\b\30\0'\n\31\0\18\v\a\0&\n\v\nB\b\2\2\18\t\b\0\18\v\0\0\18\f\1\0B\t\3\1O\3ï\127K\0\1\0\3À\2À\16lsp_attach.\frequire\tname\0\0\n<C-K>\0\n<C-k>\0\6K\0\0\n<F18>\6i\0\f<C-A-l>\0\v<A-cr>\0\agr\0\agi\0\agD\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1Â\4\1\0\17\0\24\0J6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0029\1\5\0016\2\0\0'\4\4\0B\2\2\0029\2\6\2\18\3\1\0006\5\a\0009\5\b\5'\a\t\0B\5\2\2'\6\n\0&\5\6\5B\3\2\0029\4\v\0003\6\f\0B\4\2\0016\4\0\0'\6\r\0B\4\2\0029\5\14\0045\a\19\0004\b\5\0005\t\15\0>\t\1\b5\t\16\0>\t\2\b5\t\17\0>\t\3\b5\t\18\0>\t\4\b=\b\20\aB\5\2\0016\5\0\0'\a\21\0B\5\2\2\18\6\1\0006\b\a\0009\b\b\b'\n\t\0B\b\2\2'\t\22\0&\b\t\bB\6\2\2)\a\1\0\21\b\6\0)\t\1\0M\a\14€\18\v\2\0008\r\n\6B\v\2\2'\f\23\0\18\r\v\0&\f\r\f6\r\0\0\18\15\f\0B\r\2\0028\14\v\0059\14\14\14\18\16\r\0B\14\2\1O\aò\1279\a\14\0B\a\1\0012\0\0€K\0\1\0\tlsp.\26/.config/nvim/lua/lsp\14lspconfig\fsources\1\0\0\1\0\2\tname\fluasnip\19keyword_length\3\2\1\0\2\tname\vbuffer\19keyword_length\3\3\1\0\1\tname\rnvim_lsp\1\0\1\tname\tpath\nsetup\bcmp\0\14on_attach!/.config/nvim/lua/lsp_attach\tHOME\vgetenv\aos\24removeFileExtention\als\futility\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÉ\6\0\0\6\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\6\0\0\rquickfix\14nvim-tree\15toggleterm\bfzf\20symbols-outline\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3è\a\ftabline\3è\a\vwinbar\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\nÒ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\17line_mapping\bgcc\20create_mappings\2\"comment_empty_trim_whitespace\2\18comment_empty\2\19marker_padding\2\30comment_chunk_text_object\aic\21operator_mapping\agc\nsetup\17nvim_comment\frequire\0" },
    keys = { { "", "gcc" }, { "", "gc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim¹\2\1\0\4\0\r\0\0246\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0=\2\3\0015\1\5\0003\2\6\0=\2\a\0014\2\0\0=\2\b\0019\2\t\0004\3\3\0>\1\1\3=\3\n\0029\2\t\0004\3\3\0>\1\1\3=\3\v\0029\2\t\0004\3\3\0>\1\1\3=\3\f\2K\0\1\0\trust\bcpp\6c\19configurations\targs\fprogram\0\1\0\6\tname\16Launch lldb\16stopOnEntry\1\ttype\tlldb\bcwd\23${workspaceFolder}\frequest\vlaunch\18runInTerminal\1\1\0\3\fcommand\15/sbin/lldb\tname\tlldb\ttype\15executable\tlldb\radapters\bdap\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nî\2\0\0\6\0\20\0$6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\4\0+\1\2\0=\1\5\0006\0\6\0'\2\a\0B\0\2\0029\0\b\0B\0\1\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0005\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<cr>\14<leader>e\6n\bset\vkeymap\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0" },
    keys = { { "", "<leader>e" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÜ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\6\0\0\6c\blua\bvim\vvimdoc\nquery\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\bvim\0" },
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
  ["presence.nvim"] = {
    config = { "\27LJ\2\nÜ\3\0\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\1K\0\1\0\16file_assets\14blacklist\1\0\15\22neovim_image_text\29The One True Text Editor\16auto_update\2\21line_number_text\22Line %s out of %s\19workspace_text\18Working on %s\17reading_text\15Reading %s\24plugin_manager_text\21Managing plugins\20git_commit_text\23Committing changes\23file_explorer_text\16Browsing %s\17editing_text\15Editing %s\14show_time\2\fbuttons\2\23enable_line_number\1\21debounce_timeout\3\n\14client_id\023793271441293967371\15main_image\vneovim\nsetup\rpresence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\nâ\1\0\0\a\0\f\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\1K\0\1\0\14live_grep\15<leader>fw\14git_files\15<leader>fg\15find_files\15<leader>ff\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    keys = { { "", "<leader>ff" }, { "", "<leader>fg" }, { "", "<leader>fw" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tnameç\2\1\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0003\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\vwinbar\19name_formatter\0\1\0\1\fenabled\1\nshell\6o\bvim\20shade_filetypes\1\0\r\17hide_numbers\2\17persist_size\2\17persist_mode\2\16auto_scroll\2\18close_on_exit\2\14direction\nfloat\17open_mapping\n<C-t>\tsize\3\20\22terminal_mappings\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\2\14autochdir\1\nsetup\15toggleterm\frequire\0" },
    keys = { { "", "<C-t>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/karl/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n÷\1\0\0\6\0\16\0 6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0044\5\0\0B\0\5\0016\0\0\0009\0\a\0+\1\1\0=\1\b\0006\0\0\0009\0\a\0+\1\1\0=\1\t\0006\0\0\0009\0\a\0006\1\v\0009\1\f\1'\3\r\0B\1\2\2'\2\14\0&\1\2\1=\1\n\0006\0\0\0009\0\a\0+\1\2\0=\1\15\0K\0\1\0\rundofile\18/.vim/undodir\tHOME\vgetenv\aos\fundodir\vbackup\rswapfile\bopt\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nW\0\0\6\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0044\5\0\0B\0\5\1K\0\1\0\bGit\bcmd\15<leader>gs\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-templates"] = {
    config = { "\27LJ\2\n˜\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0y    let g:tmpl_search_paths = ['~/.config/nvim/templates/']\n    let g:tmpl_author_email = 'karlsasssie@gmail.com'\n  \bcmd\bvim\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/vim-templates",
    url = "https://github.com/tibabit/vim-templates"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n»\1\0\0\t\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0005\6\n\0009\a\t\0B\a\1\2=\a\v\6B\4\2\0A\1\1\1K\0\1\0\16highlighter\1\0\0\22basic_highlighter\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\2\0\0\6:\nsetup\vwilder\frequire\0" },
    loaded = true,
    path = "/home/karl/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n÷\1\0\0\6\0\16\0 6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0044\5\0\0B\0\5\0016\0\0\0009\0\a\0+\1\1\0=\1\b\0006\0\0\0009\0\a\0+\1\1\0=\1\t\0006\0\0\0009\0\a\0006\1\v\0009\1\f\1'\3\r\0B\1\2\2'\2\14\0&\1\2\1=\1\n\0006\0\0\0009\0\a\0+\1\2\0=\1\15\0K\0\1\0\rundofile\18/.vim/undodir\tHOME\vgetenv\aos\fundodir\vbackup\rswapfile\bopt\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\6\0\0\6c\blua\bvim\vvimdoc\nquery\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÉ\6\0\0\6\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\6\0\0\rquickfix\14nvim-tree\15toggleterm\bfzf\20symbols-outline\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3è\a\ftabline\3è\a\vwinbar\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nW\0\0\6\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0044\5\0\0B\0\5\1K\0\1\0\bGit\bcmd\15<leader>gs\6n\bset\vkeymap\bvim\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n¼\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\ndelay\3è\a\22ignore_whitespace\1\18virt_text_pos\beol\14virt_text\2\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\nsigns\1\0\n\nnumhl\1!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\15signcolumn\2\18sign_priority\3\6\20update_debounce\3d\20max_file_length\3À¸\2\23current_line_blame\1\24attach_to_untracked\2\14word_diff\1\vlinehl\1\14untracked\1\0\1\ttext\bâ”†\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\bâ”‚\badd\1\0\0\1\0\1\ttext\bâ”‚\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim¹\2\1\0\4\0\r\0\0246\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0=\2\3\0015\1\5\0003\2\6\0=\2\a\0014\2\0\0=\2\b\0019\2\t\0004\3\3\0>\1\1\3=\3\n\0029\2\t\0004\3\3\0>\1\1\3=\3\v\0029\2\t\0004\3\3\0>\1\1\3=\3\f\2K\0\1\0\trust\bcpp\6c\19configurations\targs\fprogram\0\1\0\6\tname\16Launch lldb\16stopOnEntry\1\ttype\tlldb\bcwd\23${workspaceFolder}\frequest\vlaunch\18runInTerminal\1\1\0\3\fcommand\15/sbin/lldb\tname\tlldb\ttype\15executable\tlldb\radapters\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n»\1\0\0\t\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0005\6\n\0009\a\t\0B\a\1\2=\a\v\6B\4\2\0A\1\1\1K\0\1\0\16highlighter\1\0\0\22basic_highlighter\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\2\0\0\6:\nsetup\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: vim-templates
time([[Config for vim-templates]], true)
try_loadstring("\27LJ\2\n˜\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0y    let g:tmpl_search_paths = ['~/.config/nvim/templates/']\n    let g:tmpl_author_email = 'karlsasssie@gmail.com'\n  \bcmd\bvim\0", "config", "vim-templates")
time([[Config for vim-templates]], false)
-- Config for: deadcolumn.nvim
time([[Config for deadcolumn.nvim]], true)
try_loadstring("\27LJ\2\nã\2\0\0\4\0\19\0\0245\0\0\0005\1\1\0=\1\2\0005\1\3\0005\2\4\0=\2\5\1=\1\6\0005\1\a\0005\2\b\0=\2\5\1=\1\t\0005\1\n\0=\1\v\0006\1\f\0009\1\r\1'\2\15\0=\2\14\0016\1\16\0'\3\17\0B\1\2\0029\1\18\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\15deadcolumn\frequire\a80\16colorcolumn\bopt\bvim\nextra\1\0\0\fwarning\1\3\0\0\nError\15background\1\0\2\14colorcode\f#FF0000\nalpha\4š³æÌ\t™³æþ\3\rblending\fhlgroup\1\3\0\0\vNormal\15background\1\0\2\14colorcode\f#000000\14threshold\4\0€€ ÿ\3\nmodes\1\n\0\0\6i\aic\aix\6R\aRc\aRx\aRv\bRvc\bRvx\1\0\1\nscope\tline\0", "config", "deadcolumn.nvim")
time([[Config for deadcolumn.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16declaration\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19implementation\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vformat\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim:\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvimç\4\1\2\r\2 \0y5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\6\0003\a\a\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\b\0003\a\t\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\n\0003\a\v\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\f\0003\a\r\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\14\0003\a\15\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\16\0003\a\17\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\19\0003\a\20\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\19\0003\a\21\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\22\0003\a\23\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\24\0003\a\25\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\5\18\0'\6\26\0003\a\28\0\18\b\2\0B\3\5\1)\3\1\0-\4\0\0\21\4\4\0)\5\1\0M\3\17€-\a\1\0-\t\0\0008\t\6\tB\a\2\0029\b\29\0\5\a\b\0X\b\t€6\b\30\0'\n\31\0\18\v\a\0&\n\v\nB\b\2\2\18\t\b\0\18\v\0\0\18\f\1\0B\t\3\1O\3ï\127K\0\1\0\3À\2À\16lsp_attach.\frequire\tname\0\0\n<C-K>\0\n<C-k>\0\6K\0\0\n<F18>\6i\0\f<C-A-l>\0\v<A-cr>\0\agr\0\agi\0\agD\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1Â\4\1\0\17\0\24\0J6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0029\1\5\0016\2\0\0'\4\4\0B\2\2\0029\2\6\2\18\3\1\0006\5\a\0009\5\b\5'\a\t\0B\5\2\2'\6\n\0&\5\6\5B\3\2\0029\4\v\0003\6\f\0B\4\2\0016\4\0\0'\6\r\0B\4\2\0029\5\14\0045\a\19\0004\b\5\0005\t\15\0>\t\1\b5\t\16\0>\t\2\b5\t\17\0>\t\3\b5\t\18\0>\t\4\b=\b\20\aB\5\2\0016\5\0\0'\a\21\0B\5\2\2\18\6\1\0006\b\a\0009\b\b\b'\n\t\0B\b\2\2'\t\22\0&\b\t\bB\6\2\2)\a\1\0\21\b\6\0)\t\1\0M\a\14€\18\v\2\0008\r\n\6B\v\2\2'\f\23\0\18\r\v\0&\f\r\f6\r\0\0\18\15\f\0B\r\2\0028\14\v\0059\14\14\14\18\16\r\0B\14\2\1O\aò\1279\a\14\0B\a\1\0012\0\0€K\0\1\0\tlsp.\26/.config/nvim/lua/lsp\14lspconfig\fsources\1\0\0\1\0\2\tname\fluasnip\19keyword_length\3\2\1\0\2\tname\vbuffer\19keyword_length\3\3\1\0\1\tname\rnvim_lsp\1\0\1\tname\tpath\nsetup\bcmp\0\14on_attach!/.config/nvim/lua/lsp_attach\tHOME\vgetenv\aos\24removeFileExtention\als\futility\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <A-4> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-4>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>fg <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>fg", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>fw <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>fw", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'nvim-comment'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-t> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-t>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>e <cmd>lua require("packer.load")({'nvim-tree.lua'}, { keys = "<lt>leader>e", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <A-h> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-h>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <A-3> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-3>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>ff <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>leader>ff", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <A-2> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-2>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <A-1> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-1>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'nvim-comment'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <A-e> <cmd>lua require("packer.load")({'harpoon'}, { keys = "<lt>A-e>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'compiler-explorer.nvim', 'clangd_extensions.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'compiler-explorer.nvim', 'clangd_extensions.nvim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'compiler-explorer.nvim', 'clangd_extensions.nvim'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType objc ++once lua require("packer.load")({'compiler-explorer.nvim', 'clangd_extensions.nvim'}, { ft = "objc" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

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
