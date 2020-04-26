class DrawCanvas
  def initialize(width, height, history)
    @color = Color.red
    @radius = 6
    Canvas.size(width, height)
    Canvas.background(Color.white)
    @history = history
  end

  def paint(g)
    @history.execute
  end

  def draw(x, y)
    g = Graphics.new
    g.color(@color)
    g.fill_oval(x - @radius, y - @radius, @radius * 2, @radius * 2)
  end
end

class Canvas
  class << self
    def size(width, height)
      #do something
    end

    def background(color)
      #do something
    end
  end
end

class Color
  class << self
    def red
      'red'
    end

    def white
      'white'
    end
  end
end

class Graphics
  def color(color)
    #do something
  end

  def fill_oval(x, y, width, height)
    #do something
  end
end
