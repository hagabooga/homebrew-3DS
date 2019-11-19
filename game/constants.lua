function protect(tbl)
    return setmetatable({}, {
        __index = tbl,
        __newindex = function(t, key, value)
            error(
                "attempting to change constant " .. tostring(key) .. " to " ..
                    tostring(value), 2)
        end
    })
end

c = {
    SCREEN_TOP_WIDTH = 400,
    SCREEN_HEIGHT = 240,
    SCREEN_BOTTOM_WIDTH = 320,
    TITLE = "Booga's Welcome of Fate"
}
c = protect(c)

