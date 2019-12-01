class BookshelfIterator < Iterator
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