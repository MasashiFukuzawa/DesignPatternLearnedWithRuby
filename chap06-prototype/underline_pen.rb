class UnderlinePen < Product
  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(s)
    puts "#{@ulchar} #{s} #{@ulchar}"
    (s.bytes.length + 4).times do |i|
      print @ulchar
    end
    puts ''
  end
end
