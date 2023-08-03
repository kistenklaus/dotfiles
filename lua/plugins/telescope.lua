

local function configure()
  require("telescope").setup{}
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
	vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
  vim.keymap.set("n", "<A-f>", builtin.find_files, {})
end

return {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
  cmd='Telescope',
  keys = {"<leader>ff", "<leader>fg", "<leader>fw", "<A-f>"},
	requires = { {'nvim-lua/plenary.nvim'} },
	config = configure,
}
