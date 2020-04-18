class Factory
  def factory(classname)
    begin
      factory = classname.new
    rescue => e
      puts "クラス #{classname} が見つかりません。"
      puts e.message
    end
    factory
  end

  def create_link(caption, url)
  end

  def createTray(caption)
  end

  def createPage(title, author)
  end
end
