local ls = require("utility").ls;
local trimExt = require("utility").removeFileExtension;
local plugins = ls(os.getenv("HOME") .. "/.config/nvim/lua/plugins")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {
    'wbthomason/packer.nvim',
  }

  -- use(require "plugins.nvim-tree" )
  --
  -- use(require "plugins.bufferline" )
  -- use(require "plugins.clangd_extentions")
  -- use(require "plugins.compiler_explorer")
  -- use(require "plugins.dap")
  -- use(require "plugins.deadcolumn")
  -- use(require "plugins.fugitive")
  -- use(require "plugins.gitsigns")
  -- use(require "plugins.harpoon")
  -- use(require "plugins.lualine")
  -- use(require "plugins.markdown-preview")
  -- use(require "plugins.nvim-comment")
  -- use(require "plugins.presence")
  -- use(require "plugins.telescope")
  -- use(require "plugins.toggleterm")
  --
  -- use(require "plugins.transparent")
  -- use(require "plugins.treesitter")
  -- use(require "plugins.undotree")
  -- use(require "plugins.vim-templates")
  -- use(require "plugins.wilder")

  for i = 1, #plugins do
    local module_path = "plugins."..trimExt(plugins[i])
    local status, ret = pcall(require, module_path)
    if status then
      use(ret)
    else
      print(ret)
    end
  end

  if packer_bootstrap then
    require('packer').sync()
  end
end)
