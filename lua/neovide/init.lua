local M = {}

function M:init()
  if (vim.g.neovide == true) then
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = 0.8

    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0

    vim.g.neovide_profiler = false
    vim.g.neovide_cursor_vfx_mode = "wireframe"

    vim.g.neovide_scroll_animation_length = 0.3
  end
end

function M:dispose()
end

function M:packer(use)
end

return M
