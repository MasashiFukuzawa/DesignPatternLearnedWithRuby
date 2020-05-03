class ColleagueTextField
  attr_accessor :text, :state

  def initialize(text)
    @text = text
    @state = nil
  end

  def mediator=(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    @state = enabled
  end

  def text_value_changed(text)
    @text = text
    @mediator.colleague_changed
  end
end
