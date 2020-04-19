class ProbStrategy
  def initialize(seed)
    @prev_handvalue = 0
    @current_handvalue = 0
    @history = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
    @random = Random.new(seed)
  end

  def next_hand
    bet = @random.rand(sum(@current_handvalue))

    if bet < @history[@current_handvalue][0] + @history[@current_handvalue][1]
      handvalue = 0
    elsif bet < @history[@current_handvalue][0] + @history[@current_handvalue][1]
      handvalue = 1
    else
      handvalue = 2
    end

    @prev_handvalue    = @current_handvalue
    @current_handvalue = handvalue
    Hand.hand(handvalue)
  end

  def study(win_bool)
    if win_bool
      @history[@prev_handvalue][@current_handvalue] + 1
    else
      @history[@prev_handvalue][@current_handvalue + 2 % 3]
    end
  end

  def sum(hv)
    sum = 0
    3.times do |i|
      sum += @history[hv][i]
    end
    sum
  end
end
