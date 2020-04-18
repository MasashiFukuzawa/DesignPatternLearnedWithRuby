require './factory'
require './id_card_factory'
require './id_card'

id_card_factory = IDCardFactory.new
card1 = id_card_factory.create('Ichiro')
card2 = id_card_factory.create('Shohei')
card3 = id_card_factory.create('Masahiro')

card1.use
card2.use
card3.use
