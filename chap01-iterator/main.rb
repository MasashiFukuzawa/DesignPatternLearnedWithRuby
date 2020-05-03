require './book'
require './bookshelf'
require './bookshelf_iterator'

bookshelf = Bookshelf.new
bookshelf.append_book(Book.new('1st book'))
bookshelf.append_book(Book.new('2nd book'))
bookshelf.append_book(Book.new('3rd book'))
bookshelf.append_book(Book.new('4th book'))

it = bookshelf.iterator

while it.has_next? do
  book = it.next
  puts book
end
