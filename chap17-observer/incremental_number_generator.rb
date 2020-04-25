require './number_generator'

class IncrementalNumberGenerator < NumberGenerator
  attr_accessor :number
  attr_reader :start_num, :end_num, :increase_num

  def initialize(start_num, end_num, increase_num)
    @observers = []
    @number = start_num
    @end_num = end_num
    @increase_num = increase_num
  end

  def execute
    while number <= end_num do
      notify_observers
      @number += increase_num
    end
  end
end
