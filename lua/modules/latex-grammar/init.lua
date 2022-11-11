local M = {}



function M:init() end

local function grammar_guard_config()
  -- setup LSP config
  require("grammar-guard").init()
  local lspconfig = require("lspconfig");
  lspconfig.grammar_guard.setup({
    on_attach = require("boot.lsp.handlers").on_attach,
    capabilities = require("boot.lsp.handlers").capabilities,
    cmd = { '/sbin/ltex-ls' }, -- add this if you install ltex-ls yourself
    settings = {
      ltex = {
        enabled = { "latex", "tex", "bib", "markdown" },
        language = "de-DE",
        diagnosticSeverity = "information",
        setenceCacheSize = 2000,
        additionalRules = {
          enablePickyRules = false,
          motherTongue = "en-US",
        },
        trace = { server = "verbose" },
        dictionary = {
          ["en-US"] = { "adaptivity", "precomputed", "subproblem" },
        },
        disabledRules = {},
        hiddenFalsePositives = {},
      },
    },
  })
end

function M:plugins(plugin_manager)
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
