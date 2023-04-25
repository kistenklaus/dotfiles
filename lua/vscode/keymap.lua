vim.g.mapleader = " "


vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {})
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], {})
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {})
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], {})
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {})
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {})

--moving code.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--J stays in place.
vim.keymap.set("n", "J", "mzJ'z")

--cursors stays in the middle when going to next item when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--paste without copy
vim.keymap.set("x", "<leader>p", "\"_dP")

--stay in indent mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})
