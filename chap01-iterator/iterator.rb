class Iterator
  def initialize(books)
    @books = books
    @index = 0
  end

  def has_next?
    raise 'Abstract method is called.'
  end

  def next
    raise 'Abstract method is called.'
  end
end