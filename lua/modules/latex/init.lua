local M = {}

local function vimtex_config()
  vim.g.vimtex_view_general_viewer = "okular"

  local lspconfig = require("lspconfig");
  lspconfig.texlab.setup{
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities
  }

end

function M:init() end

function M:dispose() end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages(
    {
      "lervag/vimtex",
      config = vimtex_config
    })
end

return M
