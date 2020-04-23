require './no_support'
require './limit_support'
require './special_support'
require './odd_support'
require './trouble'

alice = NoSupport.new('Alice')
bob = LimitSupport.new('Bob', 100)
charlie = SpecialSupport.new('Charlie', 429)
diana = LimitSupport.new('Diana', 200)
elmo = OddSupport.new('Elmo')
fred = LimitSupport.new('Fred', 300)

alice.next_support(bob).
      next_support(charlie).
      next_support(diana).
      next_support(elmo).
      next_support(fred)

i = 0
while i < 500 do
  alice.support(Trouble.new(i))
  i += 33
end
