local function configure()
  local opts = {
    scope = 'line',
    modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
    blending = {
      threshold = 0.75,
      colorcode = '#000000',
      hlgroup = {
        'Normal',
        'background',
      },
    },
    warning = {
      alpha = 0.4,
      colorcode = '#FF0000',
      hlgroup = {
        'Error',
        'background',
      },
    },
    extra = {
      follow_tw = nil,
    },
  }
  vim.opt.colorcolumn = "80"

  require('deadcolumn').setup(opts) -- Call the setup function             
end

return {
  "Bekaboo/deadcolumn.nvim",
  config = configure
}
