

local function configure()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
	vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
end

return {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
  cmd='Telescope',
  keys = {"<leader>ff", "<leader>fg", "<leader>fw"},
	requires = { {'nvim-lua/plenary.nvim'} },
	config = configure,
}
