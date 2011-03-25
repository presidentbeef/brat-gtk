local ffi = require("ffi")

ffi.cdef "char* gtk(char*)"

local gtk = ffi.load('gtk-server')

local send = function(self, com)
  if com._lua_string then
    com = com._lua_string
  end

  local res = gtk.gtk(ffi.cast("char *", com))
  return base_string:new(ffi.string(res))
end

object:export(send, 'send')
