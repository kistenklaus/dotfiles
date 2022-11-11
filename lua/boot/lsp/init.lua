local M = {}

function M:init()
  require("boot.lsp.handlers").setup()
  require("boot.lsp.lsp-installer"):setup()
end

return M
