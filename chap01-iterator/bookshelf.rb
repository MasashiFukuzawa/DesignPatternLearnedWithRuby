class Bookshelf
  def initialize(initial_size = 0)
    @books = Array.new(initial_size)
    @last  = 0
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def get_book_at(index)
    @books[index].name
  end

  def get_length
    @last
  end

  def iterator
    BookshelfIterator.new(self)
  end
end
