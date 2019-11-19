function draw_intro()
    love.graphics.setBackgroundColor(1, 1, 1, 1)
    -- Top
    if love.system.getOS() ~= "Windows" then love.graphics.setScreen("top") end
    love.graphics.setColor(0, 0, 1, 1)
    love.graphics.setFont(font36)
    love.graphics.print(c.TITLE,
                        (c.SCREEN_TOP_WIDTH - font36:getWidth(c.TITLE)) / 2,
                        (c.SCREEN_HEIGHT - font36:getHeight(c.TITLE)) / 4)
    -- Bottom
    if love.system.getOS() ~= "Windows" then
        love.graphics.setScreen("bottom")
    end
    start_button:draw()
    quit_button:draw()
end
