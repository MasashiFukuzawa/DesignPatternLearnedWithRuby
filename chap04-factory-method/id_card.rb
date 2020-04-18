class IDCard
  attr_reader :owner

  def initialize(owner)
    @owner = owner
    puts "Create a card for #{@owner}."
  end

  def use
    puts "Use #{@owner}'s card."
  end
end
