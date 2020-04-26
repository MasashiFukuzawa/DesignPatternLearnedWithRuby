require './safe'

safe = Safe.new
24.times do |hour|
  safe.clock(hour)
  safe.action_performed if rand(3) % 3 == 0
  sleep(0.5)
end
