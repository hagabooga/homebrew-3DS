require "load"
require "button"


screen_top_width = 400
screen_height = 240
screen_bottom_width = 320
-- font = love.graphics.setNewFont(50)
inventory_buttons = {}
for i=1,6 do
    inventory_buttons[i] = Button.new(200, (i - 1)*40)
end
for i=7,12 do
    inventory_buttons[i] = Button.new(240, (i - 7)*40)
end
for i=13,18 do
    inventory_buttons[i] = Button.new(280, (i - 13)*40)
end

function love.draw()
    love.graphics.setScreen("top")
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(yh, 0, 0)
    love.graphics.setScreen("bottom")
    for i = 1,18 do
        inventory_buttons[i].draw()
    end
end



function love.update(dt) 
    y = 10 
end

function love.gamepadpressed(joystick, button)
    if button == 'start' then quit_game() end
end

function love.touchpressed(id, x, y, dx, dy, pressure) 
end

function quit_game() 
    love.event.quit() 
end
