local M ={}


function M:init()
  local util = require("lspconfig/util")
  local lspconfig = require("lspconfig")
  lspconfig.hls.setup{
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities,
    root_dir = function(filepath)
      return (
        util.root_pattern('hie.yaml', 'stack.yaml', 'cabal.project', ".hlsroot")(filepath)
        or util.root_pattern('*.cabal', 'package.yaml', ".hlsroot")(filepath)
     )
    end,
    single_file_support = true
  }
end

function M:plugins(plugin_manager)
end

return M
