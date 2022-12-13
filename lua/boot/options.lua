local M = {}

function M:set()
  vim.opt.backup = false
  vim.opt.clipboard = "unnamedplus"
  vim.opt.cmdheight = 2
  vim.opt.completeopt = { "menuone", "noselect" }
  vim.opt.conceallevel = 0
  vim.opt.fileencoding = "utf-8"
  vim.opt.hlsearch = true
  vim.opt.ignorecase = true
  vim.opt.mouse = "a"
  vim.opt.pumheight = 10
  vim.opt.showmode = false
  vim.opt.showtabline = 2
  vim.opt.smartcase = true
  vim.opt.smartindent = true
  vim.opt.splitbelow = true
  vim.opt.splitright = true
  vim.opt.swapfile = false
  vim.opt.termguicolors = true
  vim.opt.timeoutlen = 1000
  vim.opt.undofile = true
  vim.opt.updatetime = 300
  vim.opt.writebackup = false
  vim.opt.expandtab = true
  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.cursorline = true
  vim.opt.number = true
  vim.opt.relativenumber = false
  vim.opt.signcolumn = "yes"
  vim.opt.wrap = false
  vim.opt.scrolloff = 8
  vim.opt.guifont = "monospace:h17"
  vim.opt.termguicolors = true
end

return M