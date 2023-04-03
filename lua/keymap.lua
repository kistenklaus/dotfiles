vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


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

--resize window
vim.keymap.set("n", "<C-Up>", ":resize -2<cr>", {})
vim.keymap.set("n", "<C-Down>", ":resize +2<cr>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<cr>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<cr>", {})

--buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})

--stay in indent mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- buffer navigation
vim.api.nvim_exec(
  [[
function! _NextBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt" || &buftype=="quickfix"
        return
    endif
    :bnext
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt" || &buftype=="quickfix"
        :bnext
    endwhile
    call feedkeys("\<ESC>")
endfunction
nnoremap <Tab> :call _NextBuffer()<CR>


function! _PrevBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt" || &buftype=="quickfix"
        return
    endif
    :bprev
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt" || &buftype=="quickfix"
        :bprev
    endwhile
    call feedkeys("\<ESC>")
  endfunction
  nnoremap <S-Tab> :call _PrevBuffer()<CR>
    ]], true)
