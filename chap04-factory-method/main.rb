require './factory'
require './product'
require './id_card_factory'
require './id_card'

factory = IDCardFactory.new
card1   = factory.create('Ichiro')
card2   = factory.create('Shohei')
card3   = factory.create('Masahiro')

card1.use
card2.use
card3.use
