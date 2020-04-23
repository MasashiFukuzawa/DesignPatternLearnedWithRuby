require './support'

class SpecialSupport < Support
  def initialize(name, number)
    @name = name
    @number = number
  end

  def resolve(trouble)
    trouble.number == @number
  end
end
