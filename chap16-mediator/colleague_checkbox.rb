class Checkbox
  attr_accessor :state

  def initialize(caption, state)
    @caption = caption
    @state = state
  end

  class ColleagueCheckbox < Checkbox
    def mediator=(mediator)
      @mediator = mediator
    end

    def colleague_enabled?(enabled)
      !enabled
    end

    def item_state_changed(e)
      @mediator.colleague_changed
    end
  end
end
