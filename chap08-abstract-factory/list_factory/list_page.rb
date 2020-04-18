require './factory/page'

class ListPage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    buffer = "<html><head><title>#{@title}</title></head>\n"
    buffer << "<body>\n"
    buffer << "<h1>#{@title}</h1>\n"
    buffer << "<ul>\n"
    @contents.each { |content| buffer << content.make_html }
    buffer << "</ul>\n"
    buffer << "<address>#{@author}</address>"
    buffer << "</body></html>\n"
    buffer
  end
end
