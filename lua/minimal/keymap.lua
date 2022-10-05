local M = {}

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

function M:set()
  keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
end

return M
