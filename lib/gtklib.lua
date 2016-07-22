local ffi = require("ffi")

ffi.cdef "char* gtk(char*)"

local gtk = ffi.load('gtk-server')

local send = function(self, com)
  if com._lua_string then
    com = com._lua_string
  end

  local res = ffi.string(gtk.gtk(ffi.cast("char *", com)))
  if res == "-1" then
    print("GTK failure: " .. tostring(com))
  end

  return base_string:new(res)
end

object:export(send, 'send')
