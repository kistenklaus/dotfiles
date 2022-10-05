local M = {}

function M:set()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)

  vim.keymap.set({"o", "x", "i", "n", "t", "v" }, "<A-t>", [[<Cmd>ToggleTerm<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua require("terminal.keymap"):set()')

return M
