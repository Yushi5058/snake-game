require 'ruby2d'

set title: 'Snake Game'
set height: 680
set width: 480
set background: 'random'

snake = Square.new(
  x: 120,
  y: 120,
  color: 'white',
  size: 25
)

apple = Square.new(
  x: rand(480),
  y: rand(680),
  color: 'red',
  size: 10
)

show
