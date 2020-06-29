Class = require("class")

local DerivedClass = {}
DerivedClass.__index = DerivedClass

setmetatable(DerivedClass, {
  __index = Class,
  __call = function (cls, ...)
    local self = setmetatable({}, cls)
    self:new(...)
    return self
  end,
})

function DerivedClass:new(int1, int2)
    Class.new(self, int1)
    self.int2 = int2
end

function DerivedClass:get_int2()
    return self.int2
end

return DerivedClass
