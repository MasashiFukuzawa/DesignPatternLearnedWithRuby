class Entry
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def size
  end

  def add
    raise 'You cannot add on a file.'
  end

  def iterator
    raise 'You cannot add on a file.'
  end

  def to_string
    "#{name} (#{size})"
  end
end
