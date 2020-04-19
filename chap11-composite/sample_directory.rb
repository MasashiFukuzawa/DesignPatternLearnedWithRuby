require './entry'

class SampleDirectory < Entry
  def initialize(name, size = 0)
    super(name, size)
    @entries = []
  end

  def size
    @entries.each { |e| self.size += e.size }
  end

  def add(entry)
    @entries << entry
    @entries
  end

  def print_list(prefix = "")
    puts "#{prefix}/#{self.to_string}"
    @entries.each do |entry|
      puts "#{prefix}/#{entry.name}"
    end
  end
end
