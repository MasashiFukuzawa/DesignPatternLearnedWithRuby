class IDCardFactory < Factory
  attr_reader :owners

  def initialize
    @owners = []
  end

  def createProduct(owner)
    IDCard.new(owner)
  end

  def registerProduct(product)
    @owners << product.owner
  end
end
