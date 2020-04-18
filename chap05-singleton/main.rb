require './singleton'

puts 'Start.'
obj1 = Singleton.instance
obj2 = Singleton.instance

if obj1 == obj2
  puts 'obj1 and obj2 are the same instance.'
else
  puts 'obj1 and obj2 are not the same instance.'
end

puts 'End.'
