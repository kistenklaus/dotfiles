return function(_, bufnr)
  vim.keymap.set("n", "<A-space>", ":ClangdSwitchSourceHeader<cr>", {buffer = bufnr})
end
