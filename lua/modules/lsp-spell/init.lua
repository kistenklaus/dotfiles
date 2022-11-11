local M = {}

function M:init() end

local function spell_config()
  vim.opt.spell = true
  vim.opt.spelllang = { 'de', 'en' }
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages{
    "f3fora/cmp-spell",
    config = spell_config,
    requires = {

      "hrsh7th/nvim-cmp",
    }
  }
end



return M
