local Class = {int}
Class.__index = Class

setmetatable(Class, {
 __call = function (cls, ...)
   return cls.new(...)
 end,
})

function Class.new(int)
    local self = setmetatable({}, Class)
    self.int = int
    return self
end

function Class:get_int()
    return self.int
end

return Class
