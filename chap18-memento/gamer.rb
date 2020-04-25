require './memento'

class Gamer
  attr_reader :money, :fruits

  def initialize(money)
    @money = money
    @fruits = []
    @fruit_names = ['apple', 'grape', 'banana', 'orange']
  end

  def bet
    dice = rand(6) + 1
    if dice == 1
      @money += 100
      puts 'You got money.'
    elsif dice == 2
      @money /= 2
      puts 'Your money became in half.'
    elsif dice == 6
      f = fruit
      puts "You got fruit: #{f}."
      @fruits << f
    else
      puts 'Nothing happened.'
    end
  end

  def create_memento
    m = Memento.new(money)
    @fruits.each do |f|
      m.add_fruits(f) unless f.match(/Delicious/).nil?
    end
    m
  end

  def restore_memento(memento)
    @money = memento.money
    @fruits = memento.fruits_clone
  end

  private

    def fruit
      prefix = 'Delicious ' if rand(4) == 1
      "#{prefix}#{@fruit_names[rand(@fruit_names.length)]}"
    end
end
