class IDCardFactory < Factory
  def create_product(owner)
    IDCard.new(owner)
  end
end
