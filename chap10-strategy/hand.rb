class Hand
  HAND_VALUE_GUU = 0.freeze
  HAND_VALUE_CHO = 1.freeze
  HAND_VALUE_PAA = 2.freeze

  attr_reader :handvalue

  def initialize(handvalue)
    @handvalue = handvalue
  end

  def stronger_than?(h)
    fight(h) == 1
  end

  def weaker_than?(h)
    fight(h) == -1
  end

  def fight(h)
    if (self == h)
      0
    elsif (h.handvalue + 1) % 3 == handvalue
      1
    else
      -1
    end
  end

  def name
    name[handvalue]
  end

  class << self
    def hands
      [Hand.new(HAND_VALUE_GUU), Hand.new(HAND_VALUE_CHO), Hand.new(HAND_VALUE_PAA)]
    end

    def name
      ['グー', 'チョキ', 'パー']
    end

    def hand(handvalue)
      hands[handvalue]
    end
  end
end
