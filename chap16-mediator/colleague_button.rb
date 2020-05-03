class ColleagueButton
  attr_accessor :state

  def initialize(caption)
    @caption = caption
    @state = nil
  end

  def mediator=(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    @state = enabled
  end
end
