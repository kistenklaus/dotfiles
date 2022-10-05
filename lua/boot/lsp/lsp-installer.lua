local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  vim.notify("cloud not require nvim-lsp-installer", vim.log.levels.ERROR)
  return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities,
  }

  local require_ok, boot_opts = pcall(require, "boot.lsp.settings."..server.name)
  if require_ok then
    opts = vim.tbl_deep_extend("force", boot_opts, opts)
  end


  local layer_opts = require("boot"):lsp_on_server_ready(server)
  opts = vim.tbl_deep_extend("force", layer_opts, opts)
  -- This setup() function is exactly the same as lspconfig's setup function.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  server:setup(opts)
end)
