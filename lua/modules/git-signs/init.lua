local M ={}

local function sign_config()
  require('gitsigns').setup()
end

function M:init()
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages{
    'lewis6991/gitsigns.nvim',
    config = sign_config
  }
end

return M
