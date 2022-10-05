local M = {}

function M:init()

end

function M:dispose()

end

function M:packer(use)
  use {
    "hrsh7th/cmp-path",
    requires = {
      "hrsh7th/nvim-cmp"
    },
  }
end


return M
