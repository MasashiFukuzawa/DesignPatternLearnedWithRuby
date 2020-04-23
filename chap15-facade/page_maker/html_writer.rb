class HtmlWriter
  def initialize(writer)
    @writer = writer
  end

  def title(title)
    @writer.puts("<html>")
    @writer.puts("<head>")
    @writer.puts("<title>#{title}</title>")
    @writer.puts("</head>")
    @writer.puts("<body>\n")
    @writer.puts("<h1>#{title}</h1>\n")
  end

  def paragraph(msg)
    @writer.puts("<p>#{msg}</p>\n")
  end

  def link(href, caption)
    paragraph("<a href=#{href}>#{caption}</a>")
  end

  def mailto(mailaddr, username)
    link("mailto:#{mailaddr}", username)
  end

  def close
    @writer.puts("</body>")
    @writer.puts("</html>\n")
    @writer.close
  end
end
