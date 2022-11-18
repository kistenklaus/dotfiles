local M = {}

function M:init()
  local lspconfig = require("lspconfig");
  lspconfig.pyright.setup{
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities
  }
end

function M:plugins(plugin_managers)
  plugin_managers:add_packer_packages{
   'vim-scripts/indentpython.vim'
  }
end

return M
