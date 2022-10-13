local M = {}

function M:init()
  require("modules.minimal.options"):set()
  require("modules.minimal.colorscheme"):set()
  require("modules.minimal.keymap"):set()
end

function M:dispose()
  --TODO unbind keymaps
  --TODO dispose colorscheme
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages("navarasu/onedark.nvim")
  require("modules.minimal.nvim-tree"):plugins(plugin_manager)
end

return M
