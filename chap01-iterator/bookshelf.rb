class Bookshelf < Aggregate
  def initialize
    @books = Array.new
    @last  = 0
    puts @books
  end

  def append_book(book)
    @books << book
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