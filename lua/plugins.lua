local ls = require("utility").ls;
local trimExt = require("utility").removeFileExtention;
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
  use 'wbthomason/packer.nvim'
  for i = 1, #plugins do
    local module_path = trimExt("plugins." .. plugins[i])
    local opts = require(module_path)
    use(opts)
  end

  if packer_bootstrap then
    require('packer').sync()
  end
end)
