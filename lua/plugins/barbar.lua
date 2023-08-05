local function configure()
  vim.g.barbar_auto_setup = false -- disable auto-setup

  require 'barbar'.setup {
    auto_hide = true,
    insert_at_end = true,
  }

  local map = vim.api.nvim_set_keymap
  local opts = { noremap = false, silent = true }
  map("n", "<A-1>", ":BufferGoto 1<cr>", opts)
  map("n", "<A-2>", ":BufferGoto 2<cr>", opts)
  map("n", "<A-3>", ":BufferGoto 3<cr>", opts)
  map("n", "<A-4>", ":BufferGoto 4<cr>", opts)
  map("n", "<A-5>", ":BufferGoto 5<cr>", opts)
  map("n", "<A-6>", ":BufferGoto 6<cr>", opts)
  map("n", "<A-7>", ":BufferGoto 7<cr>", opts)
  map("n", "<A-8>", ":BufferGoto 8<cr>", opts)
  map("n", "<A-9>", ":BufferGoto 9<cr>", opts)
  map("n", "<A-0>", ":BufferLast<cr>", opts)
  map("n", "<A-d>", ":BufferClose<cr>", opts)
  map("n", "<A-D>", ":BufferCloseAllButCurrentOrPinned<cr>", opts)

  map("n", "<A-L>", ":BufferMoveNext<cr>", opts)
  map("n", "<A-H>", ":BufferMovePrevious<cr>", opts)
  map("n", "<A-l>", ":BufferNext<cr>", opts)
  map("n", "<A-h>", ":BufferPrevious<cr>", opts)
  map("n", "<A-p>", ":BufferPin<cr>", opts)
  map("n", "<Tab>", ":BufferNext<cr>", opts);
  map("n", "<S-Tab>", ":BufferPrevious<cr>", opts);
end

return {
  "romgrk/barbar.nvim",
  config = configure
}
