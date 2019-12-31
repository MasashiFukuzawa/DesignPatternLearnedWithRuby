class Directory < Entry
  def initialize(name)
    super(name)
    @entries = []
  end

  def get_size
    size = 0
    @entries.each do |entry|
      size += entry.size
    end
    size
  end

  def add(entry)
    @entries << entry
    @entries
  end

  def print_list(prefix)
    puts "#{prefix}/#{self.to_string}"
    @entries.each do |entry|
      puts "#{prefix}/#{entry.name}"
    end
  end
end
