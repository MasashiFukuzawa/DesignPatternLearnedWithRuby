class BookshelfIterator < Iterator
  def initialize(bookshelf)
    @bookshelf = bookshelf
    @index = 0
  end

  def has_next?
    @index < @bookshelf.getLength
  end

  def next
    book = @bookshelf.getBookAt(@index)
    @index += 1
    book
  end
end