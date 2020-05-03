class ColleagueCheckbox
  attr_accessor :state

  def initialize(caption, state)
    @caption = caption
    @state = state
  end

  def mediator=(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    @state = enabled
  end

  def item_state_changed(e)
    @mediator.colleague_changed
  end
end
