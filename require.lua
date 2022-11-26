package.loaded = {}

_G.require = function(name)
  if package.loaded[name] == nil then
    local chunk = assert(loadfile(name .. '.lua'))
    local result = chunk()

    if result ~= nil then
      package.loaded[name] = result
    elseif package.loaded[name] == nil then
      package.loaded[name] = true
    end
  end

  return package.loaded[name]
end
