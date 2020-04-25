require './number_generator'

class RandomNumberGenerator < NumberGenerator
  attr_accessor :number

  def initialize
    super
    @number = nil
  end

  def execute
    20.times do |_|
      @number = rand(0..49)
      notify_observers
    end
  end
end
