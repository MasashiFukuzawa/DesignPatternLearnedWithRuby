class Product
  def use(s)
    raise 'Abstract method is called.'
  end

  def create_clone
    p = nil
    begin
      p = clone
    rescue ArgumentError => e
      puts e.message
    end
  end
end