local M = {}

function M:add_packer_packages(plugin_config)
  if self.packer_plugin_table == nil then self.packer_plugin_table = {} end
  --post processing
  if (self.next_plugins_disabled) then
    --plugin_config.disable = true
  end
  table.insert(self.packer_plugin_table, plugin_config)
end

function M:disable_next_plugins()
  self.next_plugins_disabled = true
end

function M:enable_next_plugins()
  self.next_plugins_disabled = false
end

M.next_plugins_disabled = false

function M:init_packer()
  if not self.packer_initalized then
    local fn = vim.fn
    -- Automatically install packer
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      print "Installing packer close and reopen Neovim..."
      vim.cmd [[packadd packer.nvim]]
    end

    -- Use a protected call so we don't error out on first use
    local status_ok, packer = pcall(require, "packer")
    if not status_ok then
      return
    else
      self.packer = packer
    end

    packer.init {
      ensure_dependencies = true,
      opt_default = false,
      transitive_opt = true,
      transitive_disable = true,
      display = {
        open_fn = function()
          return require("packer.util").float { border = "rounded" }
        end,
      },
    }
  end

  self.packer.startup(function(use)
    -- make sure to add this line to let packer manage itself
    use 'wbthomason/packer.nvim'
    if self.packer_plugin_table ~= nil then
      for _, plugin_config in pairs(self.packer_plugin_table) do
        use(plugin_config)
      end
    end

    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
  end)

end

return M
