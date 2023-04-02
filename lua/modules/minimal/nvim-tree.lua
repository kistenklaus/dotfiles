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

  nvim_tree.setup({
    sort_by = "case_sensitive",
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })

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
