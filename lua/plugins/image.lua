local function configure()
  require('image').setup {
    render = {
      min_padding = 5,
      show_label = true,
      use_dither = true,
      foreground_color = false,
      background_color = false
    },
    events = {
      update_on_nvim_resize = true,
    },
  }
end

return {
  "samodostal/image.nvim",
  config = configure,
  requires = {
    "m00qek/baleia.nvim",
    'nvim-lua/plenary.nvim'
  }
}
