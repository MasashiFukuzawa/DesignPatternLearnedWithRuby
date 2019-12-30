class Factory
  def create(owner)
    product = createProduct(owner)
    registerProduct(product)
    product
  end

  def createProduct(owner)
  end

  def registerProduct(product)
  end
end
