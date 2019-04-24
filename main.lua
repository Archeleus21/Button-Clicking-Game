--runs when the game immediately starts
function love.load()
  --button characteristics
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50

--stores score
  score = 0
  timer = 0

--sets default font
  myFont = love.graphics.newFont(50)
end

--update loop called everyframe
function love.update(dt)

end

--draws graphics to the screen runs everyframe
function love.draw()
--  love.graphics.setColor(0, 0, 1, 1)
  --draws rectangle, filled/outline, posx, posy, width, hight
--  love.graphics.rectangle("fill", 200, 400, 200, 100)

  love.graphics.setColor(1, 0, 0, 1)
  love.graphics.circle("fill", button.x, button.y, button.size)

--resets font to default defined in load
  love.graphics.setFont(myFont)
  love.graphics.setColor(1, 1, 0, 1)
  love.graphics.print(score)

end

--overriding default mouse press function
function love.mousepressed(x, y, b)
--1 is left most button
  if b == 1 then
    if DistanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
    end
  end
end

--gets distance from mouse to circle center
function DistanceBetween(x1, y1, x2, y2)
  --formula to get distance from mouse pointer to center of circle
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end
