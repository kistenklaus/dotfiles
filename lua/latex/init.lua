local M = {}

local function vimtex_config()
  vim.g.vimtex_view_general_viewer = "okular"

end

function M:init()

end

function M:dispose()
end

function M:packer(use)
  use {
    'lervag/vimtex',
    config = vimtex_config
  }
end

return M
