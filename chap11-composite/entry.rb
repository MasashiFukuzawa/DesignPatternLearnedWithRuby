class Entry
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_size
  end

  def add(entry)
  end

  def print_list
    print_list('')
  end

  def to_string
    "#{@name} (#{@size})"
  end
end
