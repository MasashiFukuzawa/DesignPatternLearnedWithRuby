require './big_string'
require 'objspace' # measure memory size

GC::Profiler.enable

puts 'Start cleaning memory.'
GC::Profiler.clear
bs1 = BigString.new("12121231212123121212312121231212123121212312121231212123121212312121231212123121212312121231212123121212312121231212123", true)
bs1.print
bs1_memory = (ObjectSpace.memsize_of_all * 0.001 * 0.001).round(2)
puts "#{bs1_memory} MB"

puts '-------------------------------'

puts 'Start cleaning memory.'
GC::Profiler.clear
bs2 = BigString.new("12121231212123121212312121231212123121212312121231212123121212312121231212123121212312121231212123121212312121231212123", false)
bs2.print
bs2_memory = (ObjectSpace.memsize_of_all * 0.001 * 0.001).round(2)
puts "#{bs2_memory} MB"

puts "Memory efficiency: #{(bs2_memory - bs1_memory).round(2)}MB"
