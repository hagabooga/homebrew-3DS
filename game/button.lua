require "load"
Button = {}

-- function Button:new(o , x, y)
--     o = o or {}
--     setmetatable(o, self)
--     self.__index = self
--     self.x = x
--     self.y = y
--     return o
-- end

-- function Button:draw()
--     love.graphics.draw(beige40, self.x, self.y)
-- end

Button.new = function(x, y)
    local self = {}
    x = x or 0
    y = y or 0
    self.setx = function(arg) x = arg end
	self.sety = function(arg) y = arg end
    self.getx = function() return x end
    self.gety = function() return y end
    self.draw = function() love.graphics.draw(beige40, x, y) end
    return self
end