local M = {}

function M.ls( --[[required]] path, --[[optional]] listHidden)
  listHidden = listHidden or false
  local t, popen = {}, io.popen
  local pfile = popen('ls -a "' .. path .. '"')
  if pfile == nil then return {} end
  for filename in pfile:lines() do
    if (listHidden or not M.startswith(".", filename)) then
      table.insert(t, filename)
    end
  end
  pfile:close()
  return t
end

function M.startswith(prefix, str)
  return string.sub(str, 1, string.len(prefix)) == prefix
end

function M.removeFileExtension(--[[required]]str, --[[optional]]ext)
  ext = ext or ".lua"
  local extLen = string.len(ext)
  local strLen = string.len(str)
  return string.sub(str, 1, strLen - extLen)
end

return M

