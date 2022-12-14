local M = {}

local function configure()
  -- following options are the default
  -- each of these are documented in `:help nvim-tree.OPTION_NAME`

  local status_ok, nvim_tree = pcall(require, "nvim-tree")
  if not status_ok then
    return
  end

  local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
  if not config_status_ok then
    return
  end

  local tree_cb = nvim_tree_config.nvim_tree_callback

  nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    sort_by = "name",
    sync_root_with_cwd = true,
    ignore_ft_on_setup = {
      "startify",
      "dashboard",
      "alpha",
    },
    --auto_close = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    diagnostics = {
      enable = true
    },
    update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
    },
    git = {
      enable = true,
      ignore = true,
      timeout = 500,
    },
    view = {
      hide_root_folder = false,
      side = "left",
      --auto_resize = true,
      mappings = {
        custom_only = false,
        list = {
          { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
          { key = "h", cb = tree_cb "close_node" },
          { key = "v", cb = tree_cb "vsplit" },
        },
      },
      number = false,
      relativenumber = false,
    },
    actions = {
      open_file = {
        quit_on_open = false
      }
    }
  }

  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap
  keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages(
    {
      'kyazdani42/nvim-tree.lua',
      config = configure,
      requires = {
        'kyazdani42/nvim-web-devicons'
      },
      tag = 'nightly'
    }
  )
end

return M
