local M = {}


local function rust_tools_config()
end

function M:init()
  local opts = {
    tools = {
      runnables = {
        use_telescope = true,
      },
      inlay_hints = {
        auto = true,
        show_parameter_hints = false,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
      },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
      on_attach = require("boot.lsp.handlers").on_attach,
      capabilities = require("boot.lsp.handlers").capabilities,
      settings = {
        -- to enable rust-analyzer settings visit:
        -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
        ["rust-analyzer"] = {
          -- enable clippy on save
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    },
  }
  require("rust-tools").setup(opts)
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    "simrat39/rust-tools.nvim",
    config = rust_tools_config
  }
end

return M
