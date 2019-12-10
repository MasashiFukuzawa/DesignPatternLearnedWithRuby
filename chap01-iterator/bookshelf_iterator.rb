class BookshelfIterator < Iterator
  def initialize(books)
    @books = books
    @index = 0
  end

  def has_next?
    if @index < @books.length
      true
    else
      false
    end
  end

  def next
    book = @books[@index]
    @index += 1
    book
  end
end