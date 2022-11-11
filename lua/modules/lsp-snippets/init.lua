local M = {}

function M:init()

end

function M:dispose()

end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    "saadparwaiz1/cmp_luasnip",
    requires = {
      "hrsh7th/nvim-cmp",
    }
  }

  plugin_manager:add_packer_packages {
    "rafamadriz/friendly-snippets",
    requires = {
      "hrsh7th/nvim-cmp"
    },
  }

  plugin_manager:add_packer_packages {
    "L3MON4D3/LuaSnip"
  }

end

return M
