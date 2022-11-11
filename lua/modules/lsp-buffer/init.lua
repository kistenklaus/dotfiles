local M = {}

function M:init()

end

function M:dispose()

end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    "hrsh7th/cmp-buffer",
    requires = { "hrsh7th/nvim-cmp" },
  }
end

return M
