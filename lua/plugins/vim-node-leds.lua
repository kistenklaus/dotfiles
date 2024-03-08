
local function configure()
  print("HELLO");
  require("vim-mode-leds").setup({ path_to_leds = "/dev/ttyACM0" })
end

return {
  "arrowtip/vim-mode-leds.nvim",
  config = configure,
}
