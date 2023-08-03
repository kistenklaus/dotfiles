local function configure()
  -- examples for your init.lua

  -- disable netrw at the very start of your init.lua (strongly advised)
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- set termguicolors to enable highlight groups
  vim.opt.termguicolors = true

  -- empty setup using defaults
  require("nvim-tree").setup()

  -- OR setup with some options
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
  local api = require("nvim-tree.api")
  vim.keymap.set('n', '<leader>e', api.tree.toggle, { noremap = true })
end

return {
  "nvim-tree/nvim-tree.lua",
  keys = { "<leader>e" },
  config = configure,
}
