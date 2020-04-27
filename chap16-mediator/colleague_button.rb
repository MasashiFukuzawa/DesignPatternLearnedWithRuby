class Button
  def initialize(caption)
    @caption = caption
  end

  class ColleagueButton < Button
    def mediator=(mediator)
      @mediator = mediator
    end

    def colleague_enabled?(enabled)
      !enabled
    end
  end
end
