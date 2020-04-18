class Factory
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  def create_product(owner)
  end

  def register_product(product)
  end
end
