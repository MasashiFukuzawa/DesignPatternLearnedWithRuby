class WinningStrategy
  def initialize(seed)
    @won = false
    @random = Random.new(seed)
  end

  def next_hand
    Hand.hand(@random.rand(0..2))
  end

  def study(win_bool)
    @won = win_bool
  end
end
