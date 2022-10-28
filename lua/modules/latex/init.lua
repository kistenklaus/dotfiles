local M = {}

local function vimtex_config()
  vim.g.vimtex_view_general_viewer = "okular"

end

local function grammar_guard_config()
  -- setup LSP config
  require("grammar-guard").init()
end

function M:init()

end

function M:dispose()
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages(
    {
      "lervag/vimtex",
      config = vimtex_config
    })

  plugin_manager:add_packer_packages(
    {
      "brymer-meneses/grammar-guard.nvim",
      config = grammar_guard_config,
      requires = {
        "neovim/nvim-lspconfig",
        "williamboman/nvim-lsp-installer"
      }
    }
  )
end

return M
