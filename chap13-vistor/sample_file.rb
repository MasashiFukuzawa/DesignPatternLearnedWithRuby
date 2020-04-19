require './entry'

class SampleFile < Entry
  attr_reader :name, :size

  def initialize(name, size)
    super(name)
    @size = size
  end

  def accept(v)
    v.visit(self)
  end
end
