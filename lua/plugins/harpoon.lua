
local function configure()
  local mark = require("harpoon.mark")
  local ui = require("harpoon.ui")

  vim.keymap.set("n", "<A-h>", mark.add_file)
  vim.keymap.set("n", "<A-e>", ui.toggle_quick_menu)
  vim.keymap.set("n", "<A-1>", function() ui.nav_file(1) end)
  vim.keymap.set("n", "<A-2>", function() ui.nav_file(2) end)
  vim.keymap.set("n", "<A-3>", function() ui.nav_file(3) end)
  vim.keymap.set("n", "<A-4>", function() ui.nav_file(4) end)
  vim.keymap.set("n", "<A-5>", function() ui.nav_file(5) end)
end

return {
  "ThePrimeagen/harpoon",
  config = configure,
  keys = {"<A-h>", "<A-e>", "<A-1>", "<A-2>", "<A-3>", "<A-4>"}
}
