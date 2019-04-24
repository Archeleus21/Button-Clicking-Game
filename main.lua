--runs when the game immediately starts
function love.load()

end

--update loop called everyframe
function love.update(dt)

end

--draws graphics to the screen runs everyframe
function love.draw()
  love.graphics.setColor(0, 0, 1, 1)
  --draws rectangle, filled/outline, posx, posy, width, hight
    love.graphics.rectangle("fill", 200, 400, 200, 100)
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.circle("fill", 150, 350, 100)
end
