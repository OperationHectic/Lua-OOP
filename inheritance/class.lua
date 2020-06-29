local Class = {}
Class.__index = Class

setmetatable(Class, {
 __call = function (cls, ...)
   local self = setmetatable({}, cls)
   self:new(...)
   return self
 end,
})

function Class:new(int)
    self.int = int
end

function Class:get_int()
    return self.int
end

return Class
