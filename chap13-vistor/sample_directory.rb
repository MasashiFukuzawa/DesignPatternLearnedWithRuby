require './entry'

class SampleDirectory < Entry
  attr_reader :name, :dir

  def initialize(name)
    super(name)
    @dir = []
  end

  def accept(v)
    v.visit(self)
  end

  def size
    size = 0
    @dir.each { |d| self.size += entry.size } # stack level too deep (SystemStackError)
    size
  end

  def add(entry)
    @dir << entry
  end
end
