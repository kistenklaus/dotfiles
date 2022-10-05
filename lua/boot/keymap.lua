local M = {}


local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

function M:set()
  keymap("", "<Space>", "<Nop>", opts)
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  --window navigation
  keymap("n", "<C-h>", "<C-w>h", opts)
  keymap("n", "<C-j>", "<C-w>j", opts)
  keymap("n", "<C-k>", "<C-w>k", opts)
  keymap("n", "<C-l>", "<C-w>l", opts)

  --resize window
  keymap("n", "<C-Up>", ":resize -2<cr>", opts)
  keymap("n", "<C-Down>", ":resize +2<cr>", opts)
  keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
  keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

  --buffer navigation
  keymap("n", "<S-l>", ":bnext<CR>", opts)
  keymap("n", "<S-h>", ":bprevious<CR>", opts)
  --keymap("n", "<Tab>", ":bnext<CR>", opts)
  --keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

  --fast mode switching
  keymap("i", "jk", "<ESC>", opts)

  --open nvim file explorer
  keymap("n", "<leader>e", ":Lex 30<cr>", opts);

  --stay in indent mode
  keymap("v", "<", "<gv", opts)
  keymap("v", ">", ">gv", opts)

  --don't yank lines when pasting
  keymap("v", "p", '"_dP', opts)

  --moving lines with alt + j/k
  keymap("v", "<A-k>", ":m .-<CR>==", opts)
  keymap("v", "<A-j>", ":m .+1<CR>==", opts)

  keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
  keymap("x", "K", ":move '<-2<cr>gv-gv", opts)
  keymap("x", "<a-j>", ":move '>+1<cr>gv-gv", opts)
  keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


  keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
  keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
  keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
  keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

  vim.api.nvim_exec(
    [[
function! _NextBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        return
    endif
    :bnext
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        :bnext
    endwhile
    call feedkeys("\<ESC>")
endfunction
nnoremap <Tab> :call _NextBuffer()<CR>


function! _PrevBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        return
    endif
    :bprev
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        :bprev
    endwhile
    call feedkeys("\<ESC>")
  endfunction
  nnoremap <S-Tab> :call _PrevBuffer()<CR> 
    ]], true)
end

return M
