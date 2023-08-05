local function configure()
  vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {})
  vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit, {})
end


return {
  "tpope/vim-fugitive",
  config = configure,
}
