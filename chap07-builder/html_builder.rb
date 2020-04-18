class HTMLBuilder < Builder
  def build_title(title)
    @filename = "#{title}.html"
    begin
      @writer = File.new(@filename, 'a')
    rescue => e
      puts e.message
    end
    @writer.puts "<html><head><title>#{title}</title></head><body>"
    @writer.puts "<h1>#{title}</h1>"
  end

  def build_string(str)
    @writer.puts("<p>#{str}</p>")
  end

  def build_items(items)
    @writer.puts("<ul>")
    items.each do |item|
      @writer.puts("<li>#{item}</li>")
    end
    @writer.puts("</ul>")
  end

  def build_done
    @writer.puts("</body></html>")
    @writer.close
  end

  def result
    @filename
  end
end
