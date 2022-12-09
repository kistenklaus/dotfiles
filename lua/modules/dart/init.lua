local M = {}

function M:init() 
  local lspconfig = require("lspconfig");
  lspconfig.dartls.setup {
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities,
  }
end

function M:plugins(plugin_manager)
end

return M
