local M = {}

function M:lsp_on_server_ready(server)
  local opts = {}
  local moduleio = require("boot.moduleio")
  for _, id in ipairs(self.sorted_active_module_ids) do
    local mod = moduleio:get_module_by_id(id)
    if (mod.instance ~= nil and mod.active == true and mod.instance.lsp_on_server_ready ~= nil) then
      local ok, layer_opts = pcall(mod.lsp_on_server_ready, mod.instance, server)
      if ok and layer_opts ~= nil then
        opts = vim.tbl_deep_extend("force", layer_opts, opts)
      end
    end
  end
  return opts
end

--read module.json and settings.json
--select active plugins
--require all modules
----store module in module.instance
----if require fails store nil
--sort active plugins in topological order
function M:boot()
  local moduleio = require("boot.moduleio")

  --read module.json
  --require all modules and detect errors
  moduleio:require_all_modules()
  --read settings.json and sort active_modules
  --sort active modules
  self.sorted_active_module_ids = moduleio:sort_active_module_ids()

  ::before_load_plugins::
  local ok = pcall(self.load_plugins, self)
  if not ok then
    self.sorted_active_module_ids = moduleio:sort_active_module_ids()
    goto before_load_plugins
  end

  ::before_setup::
  local err;
  ok, err = pcall(self.startup, self)
  if not ok then
    self.sorted_active_module_ids = moduleio:sort_active_module_ids()
    vim.notify("STARTUP FAILED : " .. err)
    goto before_setup
  end
end

--collect all plugin_configs in any order
--load all plugin_configs in any order
--disable plugins from non-active modules
--don't load plugins from modules with module.instance == nil
function M:load_plugins()
  local plugin_manager = require("boot.plugins")
  local moduleio = require("boot.moduleio")
  local modules = moduleio:get_modules()
  for i = 1, #modules do
    local mod = modules[i]
    --try to call module:plugins(plugin_manager)
    if (mod.instance ~= nil and mod.instance.plugins ~= nil) then
      if mod.active then
        plugin_manager:enable_next_plugins()
      else
        plugin_manager:disable_next_plugins()
      end
      --TODO improved error handling
      ----disable plugin when error in mod.plugins happens
      ----don't change in settings just mark in moduleio as error prune and disable it temporary
      if (mod.instance.plugins ~= nil) then
        local ok, err = pcall(mod.instance.plugins, mod.instance, plugin_manager)
        if not ok then
          moduleio:module_has_error(i)
          self.sorted_active_module_ids = nil
          error("failed to get plugins for module: " .. mod.name .. "\n" .. err)
          return
        end
      end
    end
  end
  plugin_manager:enable_next_plugins()
  --TODO error checking
  require("boot.plugins.cmp"):plugins(plugin_manager)
  require("boot.plugins.lspconfig"):plugins(plugin_manager)
  require("boot.plugins"):init_packer()
end

--initalize defaults
--initalize all active plugins (in topological order)
--setup lsp_server_on_ready for all active plugins
--	(in topological order)
function M:startup()
  local moduleio = require("boot.moduleio")
  --setup defaults
  require("boot.options"):set()
  require("boot.colorscheme"):set()
  require("boot.keymap"):set()

  --setup global commands
  vim.api.nvim_create_user_command("Reboot", function()
    M:reboot()
  end, {})

  vim.api.nvim_create_user_command("Enable", function(param)
    local settingio = require("boot.settingio")
    settingio:enable_module(param.args)
    M:reboot()
  end, {
    nargs = 1,
    complete = function(ArgLead, CmdLine, CursorPos)
      --get all disabled modules
      local options = require("boot.settingio"):get_settings().disabled_module_names
      local true_options = {}
      for name, _ in pairs(options) do
        if name:match("^" .. ArgLead) then
          table.insert(true_options, name)
        end
      end
      return true_options
    end
  })

  vim.api.nvim_create_user_command("Disable", function(param)
    local settingio = require("boot.settingio")
    settingio:disable_module(param.args)
    M:reboot()
  end, {
    nargs = 1,
    complete = function(ArgLead, CmdLine, CursorPos)
      --get all disabled modules
      local options = self.sorted_active_module_ids
      local true_options = {}
      for _, id in pairs(options) do
        local name = moduleio:get_module_by_id(id).name
        if (name:match("^" .. ArgLead)) then
          table.insert(true_options, name)
        end
      end
      return true_options
    end
  })

  require("boot.lsp"):init()

  for _, id in ipairs(self.sorted_active_module_ids) do
    local mod = moduleio:get_module_by_id(id)
    if mod.instance ~= nil and mod.instance.init ~= nil then
      local ok, err = pcall(mod.instance.init, mod.instance)
      if not ok then
        moduleio:module_has_error(id)
        --TODO dispose previous attempts
        error("failed to initalize module: " .. mod.name .. "\n" .. err)
      end
    end
  end
  return true
end

--unbind all keybinding of active_modules
--unbind all user commands of active_modules
function M:dispose()
  local moduleio = require("boot.moduleio")
  for i = #self.sorted_active_module_ids, 1, -1 do
    local mod = moduleio:get_module_by_id(self.sorted_active_module_ids[i])
    if (mod.dispose ~= nil) then pcall(mod.dispose, mod) end
    if (mod.dispose ~= nil) then pcall(mod.cleanup, mod) end
  end
  --unload all modules
  moduleio:unrequire_all_modules()
  moduleio:reset()
  require("boot.settingio"):reset()
  for k, _ in pairs(package.loaded) do
    if (k == "boot.moduleio" or k == "boot.settingio") then
      package.loaded[k] = nil
    end
  end
end

function M:reboot()
  self:dispose()
  self:boot()
end

return M
