require './gamer'

gamer = Gamer.new(100)
memento = gamer.create_memento

100.times do |i|
  puts "==== #{i}"
  gamer_money = gamer.money
  puts "current_state: [#{gamer_money}, #{gamer.fruits}]"
  gamer.bet
  puts "The remaining money is #{gamer_money} yen."

  if gamer_money > memento.money
    puts "Save current_state."
    memento = gamer.create_memento
  elsif gamer_money < memento.money / 2
    puts "Return to previous state."
    gamer.restore_memento(memento)
  end

  sleep(0.5)
end
