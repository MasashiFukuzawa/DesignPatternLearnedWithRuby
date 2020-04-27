class TextField
  attr_accessor :text

  def initialize(text, columns)
    @text = text
    @columns = columns
  end

  def background(color)
    color
  end

  class ColleagueTextField < TextField
    def mediator=(mediator)
      @mediator = mediator
    end

    def colleague_enabled?(enabled)
      !enabled
      background(!enabled ? Color.white : Color.light_gray)
    end

    def text_value_changed(e)
      @mediator.colleague_changed
    end
  end
end

class Color
  class << self
    def white
      'white'
    end

    def light_gray
      'light_gray'
    end
  end
end
