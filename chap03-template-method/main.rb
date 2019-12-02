require './abstract_display'
require './char_display'
require './string_display'

d1 = CharDisplay.new('H')
d2 = StringDisplay.new('Hello, world.')

d1.display
d2.display