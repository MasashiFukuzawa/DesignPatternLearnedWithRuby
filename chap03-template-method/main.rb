require './abstract_display'
require './char_display'
require './string_display'

char_display   = CharDisplay.new('H')
string_display = StringDisplay.new('Hello, world.')

char_display.display
string_display.display
