local shapes = {}

shapes.tiles = function ()
  w = love.graphics.getWidth() / 16
  h = love.graphics.getHeight() / 16
  for i=0, w do
    for j=0, h do
      love.graphics.setColor(i*4 % 255, j*4 % 255, i*j*16 % 255)
      love.graphics.rectangle('fill', i*16, j*16, 16, 16)
    end
  end
end

shapes.circle = function (t)
  local w = love.graphics.getWidth()
  local h = love.graphics.getHeight()

  love.graphics.setColor(255,255,255)
  love.graphics.circle("line", w/2, h/2, t % 100, 100)
end

return shapes
