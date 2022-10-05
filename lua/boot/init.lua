local M = {}

function M:set_defaults()
  require("boot.options"):set()
  require("boot.colorscheme"):set()
  require("boot.keymap"):set()
end

function M:set_reboot_command()
  vim.api.nvim_create_user_command("Reboot", function()
    M:reboot()
  end, {})
end

function M:set_layer_controll_commands()
  vim.api.nvim_create_user_command("ListLayers", function()
    for _, layer in pairs(self.layers) do
      local status
      if layer.enabled then
        status = " active "
      else
        if layer.err ~= nil then
          status = layer.err
        else
          status = "inactive"
        end
      end

      vim.notify("[" .. status .. "] " .. layer.name, vim.log.levels.INFO)
    end
  end, {})

  vim.api.nvim_create_user_command("EnableLayer", function(opts)
    local name = opts.args
    for _, layer in pairs(self.layers) do
      if (layer.name == name) then
        if (layer.err ~= nil) then
          vim.notify("can't enable layer with error", vim.log.levels.ERROR)
          return
        end
        layer.enabled = true
        self:reboot()
        return
      end
    end
    vim.notify("there is no layer called " .. name, vim.log.levels.WARN)
  end, { nargs = 1 })


  vim.api.nvim_create_user_command("DisableLayer", function(opts)
    local name = opts.args
    for _, layer in pairs(self.layers) do
      if (layer.name == name) then
        layer.enabled = false
        self:reboot()
        return
      end
    end
    vim.notify("there is no layer called " .. name, vim.log.levels.WARN)
  end, { nargs = 1 })
end

function M:set_global_commands()
  self:set_reboot_command()
  self:set_layer_controll_commands()
end

function M:setup_on_file_change_event()
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*" },
    callback = function()
    end
  })
end

function M:initalize_packer()
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

function M:load_plugins()
  if (self.packer == nil) then M:initalize_packer() end
  self.packer.startup(function(use)
    -- make sure to add this line to let packer manage itself
    use 'wbthomason/packer.nvim'
    use(require("boot.plugins.cmp"))
    use(require("boot.plugins.lspconfig"))


    for _, layer in pairs(self.layers) do
      if (layer.enabled) then
        pcall(layer.module.packer, layer.module, use)
      end
    end
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
  end)
end

function M:lsp_on_server_ready(server)
  local opts = {}
  for _, layer in pairs(self.layers) do
    if(layer.enabled) then
      local ok, layer_opts = pcall(layer.module.lsp_on_server_ready, layer.module, server)
      if ok and layer_opts ~= nil then
        opts = vim.tbl_deep_extend("force", layer_opts, opts)
      end
    end
  end
  return opts
end

function M:initalize_layers()
  local err = false
  for _, layer in pairs(self.layers) do
    if (layer.enabled and not err) then
      local ok = pcall(layer.module.init, layer.module)
      if ok then
        layer.loaded = true
      else
        if (layer.loaded) then
          pcall(layer.module.dispose, layer.module)
          layer.loaded = false
        end
        err = true
      end
    else
      if (layer.loaded) then
        pcall(layer.module.dispose, layer.module)
        layer.loaded = false
      end
    end
  end
end

function M:dispose_layers()
  for _, layer in pairs(self.layers) do
    if layer.loaded then
      pcall(layer.module.dispose, layer.module)
      layer.loaded = false
    end
  end
end

function M:reboot()
  self:dispose_layers()
  self:set_defaults()
  self:set_global_commands()
  self:setup_on_file_change_event()
  self:initalize_layers()
end

function M:startup(layer_list)
  if self.layers ~= nil then
    vim.notify("trying to initalize boot.lua twice", vim.log.levels.ERROR)
    return
  end
  self.layers = {}
  local err = false
  for _, layer_name in pairs(layer_list) do
    local require_ok, layer = pcall(require, layer_name)
    if (err or not require_ok or layer == nil or layer == true) then
      local errorMsg = nil
      if (not require_ok or layer == nil or layer == true) then
        errorMsg = " error  "
      end
      table.insert(self.layers, {
        module = layer,
        name = layer_name,
        enabled = false,
        loaded = false,
        err = errorMsg
      })
      err = true
    else
      table.insert(self.layers, {
        module = layer,
        name = layer_name,
        enabled = true,
        loaded = false
      })
    end
  end
  self:set_defaults()
  self:set_global_commands()
  self:setup_on_file_change_event()
  self:load_plugins()
  self:initalize_layers()
end

return M
