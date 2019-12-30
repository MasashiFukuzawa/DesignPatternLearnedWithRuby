require 'active_support'

module Factory
  extend ActiveSupport::Concern

  class Item
    def initialize(caption)
      @caption = caption
    end

    def make_html
    end
  end

  class Link < Item
    def initialize(caption, url)
      super(caption)
      @url = url
    end
  end

  class Tray < Item
    def initailize(caption)
      @trays = []
      super(caption)
    end

    def add_item(item)
      @trays << item
    end
  end

  class Page
    def initialize(title, author)
      @contents = []
      @title    = title
      @author   = author
    end

    def add(item)
      @contents << item
    end

    def output
      begin
        filename = "#{@title}.html"
        writer   = FileWriter.new(filename)
        writer.write(make_html)
        writer.close
        puts "#{filename}を作成しました。"
      rescue Exception => e
        puts e
      end
    end

    def self.make_html
    end
  end

  class Factory
    def get_factory(classname)
      begin
        factory = classname.safe_constantize.new
      rescue Exception => e
        puts "クラス #{classname} が見つかりません。"
        puts e
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
end
