require './macro_command'
require './draw_canvas'
require './draw_command'

history = MacroCommand.new
canvas = DrawCanvas.new(400, 400, history)

(1..10).each do |i|
  puts i
  cmd = DrawCommand.new(canvas, position: { x: i * rand(10), y: i * rand(10) })
  if rand(10) == i
    history.clear
  elsif [1, 2, 3].include?(rand(10))
    history.undo
  else
    history.append(cmd)
  end
  cmd.execute
  puts '--------------------------------'
  sleep(0.5)
end
