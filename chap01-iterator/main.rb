require './aggregate'
require './iterator'
require './bookshelf'
require './bookshelf_iterator'

bookshelf = Bookshelf.new(4)
bookshelf.append_book('1st book')
bookshelf.append_book('2nd book')
bookshelf.append_book('3rd book')
bookshelf.append_book('4th book')

it = bookshelf.iterator

while it.has_next? do
  book = it.next
  puts book
end