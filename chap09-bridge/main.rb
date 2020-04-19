require './display'
require './count_display'
require './random_count_display'
require './string_display_impl'
require './file_display_impl'

d1 = Display.new(StringDisplayImpl.new('Hello, Japan.'))
d2 = Display.new(StringDisplayImpl.new('Hello, World.'))
d3 = CountDisplay.new(StringDisplayImpl.new('Hello, Universe.'))
d4 = RandomCountDisplay.new(StringDisplayImpl.new('Hello, Tokyo.'))
d5 = Display.new(FileDisplayImpl.new('./main.rb'))
d1.display
d2.display
d3.display
d3.multi_display(5)
d4.display
d4.random_display(10)
d5.display
