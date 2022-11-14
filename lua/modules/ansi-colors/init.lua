local M ={}

function M:init()
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    "powerman/vim-plugin-AnsiEsc"
  }
end

return M
