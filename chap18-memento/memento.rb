class Memento
  attr_reader :money

  def initialize(money)
    @money = money
    @fruits = []
  end

  def add_fruits(fruit)
    @fruits << fruit
  end

  def fruits_clone
    @fruits.clone
  end
end
