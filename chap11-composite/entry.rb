class Entry
  attr_reader :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end

  def add(entry)
  end

  def print_list(prefix)
  end

  def to_string
    "#{name} (#{size})"
  end
end
