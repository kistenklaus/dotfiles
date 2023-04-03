local function configure()
  local lsp = require("lsp-zero")
  local lspconfig = require("lspconfig")

  lsp.preset('recommended')

  local ls = require("utility").ls;
  local trimExt = require("utility").removeFileExtention;
  local attachHandlers = ls(os.getenv("HOME") .. "/.config/nvim/lua/lsp_attach")

  local lsps = ls(os.getenv("HOME") .. "/.config/nvim/lua/lsp")

  local required_lsps = {}
  for i = 1, #lsps do
    local name = trimExt(lsps[i]);
    table.insert(required_lsps, name)
  end
  for i = 1, #attachHandlers do
    local name = trimExt(attachHandlers[i])
    table.insert(required_lsps, name)
  end

  lsp.ensure_installed(required_lsps)

  ---@diagnostic disable-next-line: unused-local
  lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)

    vim.keymap.set("n", "<A-cr>", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<C-A-l>", function() vim.lsp.buf.format() end, opts)

    vim.keymap.set("i", "<F18>", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<F18>", function() vim.lsp.buf.rename() end, opts)

    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<C-K>", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("i", "<C-K>", function() vim.diagnostic.open_float() end, opts)

    for i = 1, #attachHandlers do
      local name = trimExt(attachHandlers[i])
      if name == client.name then
        local on_attach = require("lsp_attach." .. name)
        on_attach(client, bufnr)
      end
    end
  end)

  local cmp = require("cmp")
  cmp.setup({
    sources = {
      { name = 'path' },
      { name = 'nvim_lsp' },
      { name = 'buffer',  keyword_length = 3 },
      { name = 'luasnip', keyword_length = 2 },
    },
  })


  for i = 1, #lsps do
    local name = trimExt(lsps[i]);
    local module_path = "lsp." .. name
    local opts = require(module_path)
    lspconfig[name].setup(opts)
  end


  lsp.setup()
end

return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required

    {
      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    { "hrsh7th/cmp-path" },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'L3MON4D3/LuaSnip' },     -- Required
  },
  config = configure,
}
