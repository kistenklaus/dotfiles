local M = {}

local function lualine_config()
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {"quickfix", "nvim-tree", "toggleterm", "fzf", "symbols-outline"}
  }
end

local function bufferline_config()
  vim.opt.termguicolors = true
  require("bufferline").setup{}
end

function M:init()
  lualine_config()
end

function M:dispose()
end

function M:packer(use)
  use {
    'nvim-lualine/lualine.nvim',
    config = lualine_config,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim',
    config = bufferline_config,
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
end

return M
