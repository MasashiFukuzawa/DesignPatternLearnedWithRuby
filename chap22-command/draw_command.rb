class DrawCommand
  attr_reader :drawable, :position

  def initialize(drawable, position:)
    @drawable = drawable
    @position = position
  end

  def execute
    drawable.draw(position[:x], position[:y])
  end
end
