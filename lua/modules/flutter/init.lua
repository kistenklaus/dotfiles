local M = {}

local function flutter_tools_config()
    require("flutter-tools").setup{} -- use defaults
end

function M:init()

end


function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages{
    "akinsho/flutter-tools.nvim",
    config = flutter_tools_config
  }
end

return M
