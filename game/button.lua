Button = {}
Button.__index = Button

function Button:new(text, font, onpress, x, y, r, g, b, a)
    local but = {}
    setmetatable(but, Button)
    but.text = text or ""
    but.font = font
    but.onpress = onpress or
                      (function()
            print("BUTTON HAS NO ASSIGNED FUNCTION!!")
        end)
    but.x = x or 0
    but.y = y or 0
    but.r = r or 0
    but.g = g or 0
    but.b = b or 0
    but.a = a or 1
    return but
end

function Button:draw()
    love.graphics.setColor(self.r, self.g, self.b, self.a)
    love.graphics.setFont(self.font)
    love.graphics.rectangle("fill", self.x, self.y,
                            self.font:getWidth(self.text),
                            self.font:getHeight(self.text) * 1.4)
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.print(self.text, self.x, self.y)
end

function Button:setToScreen(xper, yper)
    self.x = (c.SCREEN_BOTTOM_WIDTH - self.font:getWidth(self.text)) * xper
    self.y = (c.SCREEN_HEIGHT - self.font:getHeight(self.text)) * yper
end

function Button:pressed(x, y)
    if self.x < x and x < self.x + self.font:getWidth(self.text) and self.y < y and
        y < self.y + self.font:getHeight(self.text) * 1.4 then self.onpress() end
end
