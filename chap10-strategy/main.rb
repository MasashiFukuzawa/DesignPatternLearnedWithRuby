require './hand'
require './winning_strategy'
require './prob_strategy'
require './player'

seed1 = Random.new(314)
seed2 = Random.new(15)

player1 = Player.new('Taro', WinningStrategy.new(seed1.rand(0..2)))
player2 = Player.new('Hana', ProbStrategy.new(seed2.rand(0..2)))

100.times do |i|
  next_hand1 = player1.next_hand
  next_hand2 = player2.next_hand

  if next_hand2.weaker_than?(next_hand1)
    puts "Winner: #{player1.name}"
    player1.win
    player2.lose
  elsif next_hand2.stronger_than?(next_hand1)
    puts "Winner: #{player2.name}"
    player1.lose
    player2.win
  else
    puts "Even..."
    player1.even
    player2.even
  end
end

puts "Total result:\n#{player1.to_string}\n#{player2.to_string}"
