require './factory/page'

class TablePage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    buffer = "<html><head><title>#{@title}</title></head>\n"
    buffer << "<body>\n"
    buffer << "<h1>#{@title}</h1>\n"
    buffer = "<table width=\"100%\" border=\"1\"><tr>"
    @contents.each { |content| buffer << "<tr>#{content.make_html}</tr>" }
    buffer << "</table>\n"
    buffer << "<hr><address>#{@author}</address>"
    buffer << "</body></html>\n"
    buffer
  end
end
