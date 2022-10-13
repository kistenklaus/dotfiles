local M = {}

function M:init()
  vim.cmd[[highlight Normal ctermbg=none guibg=none]]
  vim.cmd[[highlight NonText ctermbg=none guibg=none]]
  vim.cmd[[highlight EndOfBuffer ctermbg=none guibg=none]]
  --local i = "abc" + 1
end

return M
