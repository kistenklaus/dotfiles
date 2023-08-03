local function configure()
  require("bufferline").setup()
end

return {
  disable = true,
  'akinsho/bufferline.nvim',
  config = configure,
  tag = "v2.*",
}
