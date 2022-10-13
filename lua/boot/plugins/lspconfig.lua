local M = {}

local function configure()
  local lspconfig_ok, _ = pcall(require, "lspconfig")
  if not lspconfig_ok then
    vim.notify("failed to require lspconfig", vim.log.levels.ERROR)
    return
  end
  local require_ok, module = pcall(require, "boot.lsp")
  if not require_ok and module ~= nil and module ~= true then
    vim.notify("failed to require boot.lsp", vim.log.levels.ERROR)
    return
  end
  local init_ok, _ = pcall(module.init, module)
  if not init_ok then
    vim.notify("failed to initalize boot.lsp", vim.log.levels.ERROR)
    return
  end
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages(
    {
      "neovim/nvim-lspconfig",
      config = configure,
      requires = {
        "hrsh7th/cmp-nvim-lsp"
      }
    }
  )
  plugin_manager:add_packer_packages(
    {
      "williamboman/nvim-lsp-installer",
      requires = {
        "neovim/nvim-lspconfig"
      }
    }
  )
end

return M
