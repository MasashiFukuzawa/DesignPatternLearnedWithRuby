class Page
  def initialize(title, author)
    @title = title
    @author = author
  end

  def add(item)
    @contents ||= []
    @contents << item
  end

  def output
    begin
      filename = "#{@title}.html"
      writer = File.new(filename, 'w')
      writer.puts(self.make_html)
      writer.close
      puts "#{filename}を作成しました。"
    rescue => e
      puts e.message
    end
  end

  def make_html
  end
end
