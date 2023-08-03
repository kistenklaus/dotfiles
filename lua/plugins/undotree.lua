local function configure()
  vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {noremap = true, silent = true})

  vim.opt.swapfile = false
  vim.opt.backup = false
  vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
  vim.opt.undofile = true
end


return {
  "mbbill/undotree",
  config = configure
}
