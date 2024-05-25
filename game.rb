require 'ruby2d'

set title: 'Snake Game'
set height: 680
set width: 480
set background: 'random'

@snake = Square.new(
  x: 120,
  y: 120,
  color: 'white',
  size: 25
)

@apple = Square.new(
  x: rand(480),
  y: rand(680),
  color: 'red',
  size: 10
)

@x_speed = 0
@y_speed = 0

def draw
 if snake.x == apple.x && snake.y == apple.y
   @snake.size += 5
   @apple.x = rand(480)
   @apple.y = rand(680)
 end
end

on :key_down do |event|
  if event.key == 'down'
    @x_speed = 0
    @y_speed = 2
  elsif event.key == 'up'
    @x_speed = 0
    @y_speed = -2
  elsif event.key == 'left'
    @x_speed = -2
    @y_speed = 0
  elsif event.key == 'right'
    @x_speed = 2
    @y_speed = 0
  end
end

update do
  @snake.x += @x_speed
  @snake.y += @y_speed
end

show
