require './entry'

class SampleFile < Entry
  def add(entry)
    raise 'You cannot add onto a file.'
  end

  def print_list(prefix = "")
    puts "#{prefix}/#{self.to_string}"
  end
end
