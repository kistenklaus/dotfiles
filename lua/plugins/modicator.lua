local function configure()
  require('modicator').setup()
end

return {
  "mawkler/modicator.nvim",
  after = 'onedark.nvim',
  setup = function()
    -- These are required for Modicator to work
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
  end,
  config = configure
}
