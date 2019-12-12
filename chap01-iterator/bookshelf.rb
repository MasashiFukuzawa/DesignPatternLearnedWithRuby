class Bookshelf < Aggregate
  def initialize(maxsize)
    @books = Array.new(maxsize)
    @last  = 0
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def getBookAt(index)
    @books[index]
  end

  def getLength
    @last
  end

  def iterator
    BookshelfIterator.new(self)
  end
end