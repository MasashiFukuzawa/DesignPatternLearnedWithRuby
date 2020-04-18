require './director'
require './builder'
require './html_builder'
require './text_builder'

text_builder = TextBuilder.new
director = Director.new(text_builder)
director.construct
puts text_builder.result

html_builder = HTMLBuilder.new
director = Director.new(html_builder)
director.construct
puts html_builder.result
