class MessageBox < Product
  def initialize(decochar)
    @decochar = decochar
  end

  def use(s)
    puts "#{@decochar} #{s} #{@decochar}"
    (s.bytes.length + 4).times do |i|
      print @decochar
    end
    puts ''
  end
end
