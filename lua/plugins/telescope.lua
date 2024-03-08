local function configure()

  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
  vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set("n", "<A-f>", builtin.find_files, {})

  -- require("telescope").load_extension "session-lens"
end

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  requires = { { 'nvim-lua/plenary.nvim' } },
  config = configure,
}
