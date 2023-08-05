local function configure()
  vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
end


return {
  "eandrju/cellular-automaton.nvim",
  config = configure,
}
