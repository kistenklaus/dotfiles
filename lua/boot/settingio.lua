local M = {}

local function read_settings_from_file()
  local path = os.getenv("HOME") .. "/.config/nvim/settings.json"
  local file = io.open(path)
  if file then
    local content = file:read("*ab")
    local parsed = vim.json.decode(content)
    local settings = {}
    settings.disabled_module_names = {}
    for attrib, value in pairs(parsed) do
      if (attrib == "disabled_modules" ) then
        for _, name in pairs(value) do
          settings.disabled_module_names[name] = true
        end
      end
    end
    io.close(file)
    return settings
  else
    --TODO create default config (depends on modules.json)
    local default = {}
    default.disabled_module_names = {}
    return default
  end
end

local function write_settings_to_file(settings)
  local path = os.getenv("HOME") .. "/.config/nvim/settings.json"
  local file = io.open(path, "w+")
  if file then
    --pre processing
    local obj = {}
    obj.disabled_modules = {}

    for name, b in pairs(settings.disabled_module_names) do
      table.insert(obj.disabled_modules, name)
    end
    local encoded = vim.json.encode(obj)
    vim.notify(encoded)
    file:write(encoded)
    file:close()
  end
end

function M:require_settings()
  if (self.settings == nil or self.settings.deprecated_settings == true) then
    self.settings = read_settings_from_file()
    self.deprecated_settings = false
    if (self.version == nil) then
      self.version = 0
    else
      self.version = self.version + 1
    end
  end
end

function M:get_settings()
  M:require_settings()
  return self.settings
end

function M:get_settings_version()
  M:require_settings()
  return self.version
end

function M:get_disabled_layers()
end

function M:reload_from_disk()
  self.deprecated_settings = true
  M:require_settings()
end

function M:reset()
  self.deprecated_settings = true
  self.settings = nil
  self.version = nil
end

function M:enable_module(name)
  self:require_settings()
  local is_disabled = self.settings.disabled_module_names[name] == true
  if not is_disabled then return end
  self.settings.disabled_module_names[name] = nil
  write_settings_to_file(self.settings)
end

function M:disable_module(name)
  self:require_settings()
  local is_disabled = self.settings.disabled_module_names[name] == true
  if is_disabled then return end
  self.settings.disabled_module_names[name] = true
  write_settings_to_file(self.settings)
end

return M
