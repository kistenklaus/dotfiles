local M = {}

function M:init()
  require("boot.lsp.lsp-installer")
  require("boot.lsp.handlers").setup()
end

return M
