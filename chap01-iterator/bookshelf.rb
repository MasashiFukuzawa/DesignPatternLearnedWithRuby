class Bookshelf < Aggregate
  def append_book(book)
    @books << book
    @last += 1
  end

  def iterator
    BookshelfIterator.new(@books)
  end
end