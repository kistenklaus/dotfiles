local function configure()
  require("bufferline").setup()
end

return {
  'akinsho/bufferline.nvim',
  config = configure,
  tag = "v2.*",
  requires = 'kyazdani42/nvim-web-devicons'
}
