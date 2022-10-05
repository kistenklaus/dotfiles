local M = {}

function M:init()

end

function M:dispose()

end

function M:packer(use)
  use {
    "saadparwaiz1/cmp_luasnip",
    requires = {
      "hrsh7th/nvim-cmp",
    }
  }

  use {
    "rafamadriz/friendly-snippets",
    requires = {
      "hrsh7th/nvim-cmp"
    },
  }

  use {
    "L3MON4D3/LuaSnip"
  }

end

return M
