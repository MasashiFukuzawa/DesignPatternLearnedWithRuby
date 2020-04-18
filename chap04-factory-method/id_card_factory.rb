class IDCardFactory
  def create_product(owner)
    IDCard.new(owner)
  end
end
