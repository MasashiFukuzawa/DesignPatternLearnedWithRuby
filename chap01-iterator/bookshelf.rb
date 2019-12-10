class Bookshelf < Aggregate
  def initialize
    @books = []
    @last  = 0
  end

  def append_book(book)
    @books << book
    @last += 1
  end

  def iterator
    BookshelfIterator.new(@books)
  end
end