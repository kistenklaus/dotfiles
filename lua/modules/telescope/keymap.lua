local M = {}

function M:set()
  local keymap = vim.api.nvim_set_keymap
  local opts = {noremap = true, silent = true}
  keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
end

return M
