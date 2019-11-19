require "button"
require "intro"
require "constants"

if love.system.getOS() == "Windows" then
    love.window.setMode(c.SCREEN_TOP_WIDTH, c.SCREEN_HEIGHT)
end
-- inventory_buttons = {}
-- for i = 1, 12 do
--     inventory_buttons[i] = Button:new(140 + (math.floor((i - 1) / 4) * 60),
--                                       (i % 4) * 60, 60, 60, 0, 1)
-- end

function love.load()
    yh = love.graphics.newImage("yh.png")
    ew = love.graphics.newImage("ew.png")
    beige32 = love.graphics.newImage("beige32.png")
    beige40 = love.graphics.newImage("beige40.png")
    bg = love.audio.newSource("music/intro.mp3", "stream")
    bg:setVolume(0.4)
    bg:setLooping(true)
    bg:play()
    font36 = love.graphics.newFont("segoeuil.ttf", 36)
    font20 = love.graphics.newFont("segoeuil.ttf", 20)
    font28 = love.graphics.newFont("segoeuil.ttf", 28)
    start_button = Button:new("Start", font28, nil, 0, 0, 0, 1)
    start_button:setToScreen(1 / 4, 1 / 2)
    quit_button = Button:new("Quit", font28, quit_game, 0, 0, 1)
    quit_button:setToScreen(3 / 4, 1 / 2)
end

function love.draw()
    draw_intro()
    -- for i = 1, 12 do inventory_buttons[i]:draw() end
end

function love.update(dt) y = 10 end

function love.gamepadpressed(joystick, button)
    if button == 'start' then quit_game() end
end

function check_presses(x, y)
    start_button:pressed(x, y)
    quit_button:pressed(x, y)
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then check_presses(x, y) end
end
function love.touchpressed(id, x, y, dx, dy, pressure) check_presses(x, y) end

function quit_game() love.event.quit() end
