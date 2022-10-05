local M = {}

function M:init()
  require("minimal.options"):set()
  require("minimal.colorscheme"):set()
  require("minimal.keymap"):set()
end

function M:dispose()
end

function M:packer(use)
  use "navarasu/onedark.nvim"
  use(require("minimal.nvim-tree"))
end

function M:lsp_on_server_ready(server)
  --vim.notify("server:"..server.name, vim.log.levels.DEBUG)
end

return M
