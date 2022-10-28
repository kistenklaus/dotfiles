local M = {}

function M:init()
  vim.notify("hello world")
  require("boot.lsp.lsp-installer"):setup()
  require("boot.lsp.handlers").setup()
end

return M
