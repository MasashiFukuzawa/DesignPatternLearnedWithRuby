require './printer'
require './printer_proxy'

p = PrinterProxy.new(Printer.new('Alice'))
puts "Current name is #{p.name}."
p.name = 'Bob'
puts "Current name is #{p.name}."
p.name
p.output('Hello, world.')
