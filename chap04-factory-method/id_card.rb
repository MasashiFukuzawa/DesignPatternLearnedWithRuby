class IDCard < Product
  attr_reader :owner

  def initialize(owner)
    @owner = owner
    puts "#{@owner}のカードを作ります。"
  end

  def use
    puts "#{@owner}のカードを使います。"
  end
end
