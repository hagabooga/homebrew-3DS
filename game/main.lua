function love.draw()
    love.graphics.print('Hello World!', 50, 50)
end

function love.load()
    x = 10
end

function love.update(dt)
    y = 10
end

function love.gamepadpressed(joystick, button)
    if button == 'start' then quit_game() end
end

function quit_game()
    love.event.quit()
end