local M = {}

local function read_modules_from_file()
  local path = os.getenv("HOME") .. "/.config/nvim/lua/modules.json"
  local file = io.open(path)
  if file then
    local content = file:read("*ab")
    local modules = {}
    if content then
      local weird_modules = vim.json.decode(content)
      for i, weird_module in pairs(weird_modules) do
        local module = {}
        for attrib, value in pairs(weird_module) do
          if (attrib == "name") then
            module.name = value
          elseif (attrib == "path") then
            module.path = value
          elseif (attrib == "dependencies") then
            --might also require weird array unwrapping
            local dependencies = {}
            for _, dep in pairs(value) do
              table.insert(dependencies, dep)
            end
            module.dependencies = dependencies
          end
        end
        if (module.dependencies == nil) then module.dependencies = {} end
        module.id = i
        table.insert(modules, module)
      end
    end
    io.close(file)
    --post processing
    for i, mod in pairs(modules) do
      for j, dep_name in pairs(mod.dependencies) do
        for k, mod2 in pairs(modules) do
          if (mod2.name == dep_name) then
            modules[i].dependencies[j] = k
          end
        end
      end
      if (mod.path == nil) then modules[i].path = mod.name end
    end
    return modules;
  else
    return {}
  end
end

function M:update_modules()
  if (self.unsorted_modules == nil or self.deprecated_module_list == true) then
    self.unsorted_modules = read_modules_from_file()
    self.id_lookup_table = {}
    for id, mod in pairs(self.unsorted_modules) do
      self.id_lookup_table[mod.name] = id;
    end
  end
end

function M:get_modules()
  M:update_modules()
  return self.unsorted_modules
end

function M:sort_module_id_list(module_id_list)
  M:update_modules()
  --topological sort
  local visited = {}
  local stack = {}
  local function dfs(v)
    visited[v] = true
    for _, mod_id in pairs(self.unsorted_modules[v].dependencies) do
      if (self.unsorted_modules[mod_id].visited == false) then
        if (self.unsorted_modules[mod_id].active == false) then
          vim.notify("dependency " .. self.unsorted_modules[mod_id].name ..
            " of module " .. self.unsorted_modules[v].name)
        end
        dfs(mod_id)
      end
    end
    table.insert(stack, v)
  end

  for _, i in pairs(module_id_list) do
    if (visited[i] ~= true) then
      dfs(i)
    end
  end
  return stack
end

function M:sort_module_name_list(module_name_list)
  M:update_modules()
  --convertion
  local module_id_list = {}
  for _, name in pairs(module_name_list) do
    table.insert(module_id_list, M:get_module_id_by_module_name(name))
  end
  --sorting
  local sorted_module_id_list = M:sort_module_id_list(module_id_list)
  --convertion
  local sorted_module_name_list = {}
  for _, id in pairs(sorted_module_id_list) do
    table.insert(sorted_module_name_list, M:get_module_by_id(id).name)
  end
  return sorted_module_name_list
end

function M:get_module_by_id(id)
  M:update_modules()
  return self.unsorted_modules[id]
end

function M:get_module_id_by_module_name(module_name)
  M:update_modules()
  return self.id_lookup_table[module_name]
end

function M:reload_from_disk()
  self.deprecated_module_list = true
  M:update_modules()
end

function M:update_active_modules()
  self:update_modules()
  local settingio = require("boot.settingio")
  if (self.active_module_ids == nil or self.setting_version ~= settingio:get_settings_version()) then
    local settings = settingio:get_settings()
    local disabled_module_names = settings.disabled_module_names
    self.active_module_ids = {}
    for _, mod in pairs(self.unsorted_modules) do
      if (disabled_module_names[mod.name] ~= true and mod.instance ~= nil and mod.error ~= true) then
        table.insert(self.active_module_ids, mod.id)
      end
    end
    self.setting_version = settingio:get_settings_version()
  end
  --post processing
  --set to false for all modules
  for i, _ in ipairs(self.unsorted_modules) do
    self.unsorted_modules[i].active = false
  end
  --only set on active modules
  for _, id in ipairs(self.active_module_ids) do
    self.unsorted_modules[id].active = true
  end
end

function M:sort_active_module_ids()
  self:update_active_modules()
  local sorted_active_module_ids = self:sort_module_id_list(self.active_module_ids)
  return sorted_active_module_ids
end

function M:require_all_modules()
  self:update_modules()
  for i, module in ipairs(self.unsorted_modules) do
    local status, instance = pcall(require, module.path)
    if status then
      self.unsorted_modules[i].instance = instance
    else
      self.unsorted_modules[i].error = true
    end
  end
end

function M:unrequire_all_modules()
  for k, _ in pairs(package.loaded) do
    if string.match(k, "^modules.*") then
      package.loaded[k] = nil
    end
  end
end

function M:reset()
  self.deprecated_module_list = true
  self.unsorted_modules = nil
  self.setting_version = nil
  self.active_module_ids = nil
end

function M:module_has_error(module_id)
  self:update_modules()
  self.unsorted_modules[module_id].error = true
  self.active_module_ids = nil
  self:update_active_modules()
  self.id_lookup_table = nil
end

return M
