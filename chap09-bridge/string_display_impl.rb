class StringDisplayImpl
  attr_reader :string, :width

  def initialize(string)
    @string = string
    @width = string.bytes.length
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{string}|"
  end

  def raw_close
    print_line
  end

  def print_line
    print "+"
    width.times do |i|
      print "-"
    end
    puts "+"
  end
end
