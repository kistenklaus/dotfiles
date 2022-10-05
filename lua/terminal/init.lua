local M = {}

local function toggleterm_config()
  local toggleterm = require("toggleterm")
  toggleterm.setup{
    --direction = "horizontal"
    direction = "float"
  }
end

function M:init()
  require("terminal.keymap"):set()
end

function M:dispose()
end

function M:packer(use)
  use {
    'akinsho/toggleterm.nvim',
    tag = "*",
    config = toggleterm_config
  }
end

return M
