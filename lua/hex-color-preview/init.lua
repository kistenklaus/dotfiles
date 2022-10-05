local M = {}

function M:init()
end

function M:dispose()

end

function M:packer(use)
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }
end

return M
