local M = {}

function M:init()
end

function M:dispose()

end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }
end

return M
