require './factory'

module ListFactory
  class ListFactory < Factory::Factory
    def create_link(caption, url)
      ListLink.new(caption, url)
    end

    def create_tray(caption)
      ListTray.new(caption)
    end

    def create_page(title, author)
      ListPage.new(title, author)
    end
  end

  class ListLink < Factory::Link
    def initialize(caption, url)
      super(caption, url)
    end

    def make_html
      "  <li><a href=#{@url}>@caption</a></li>\n"
    end
  end

  class ListTray < Factory::Tray
    def initialize(caption)
      super(caption)
    end

    def make_html
      buffer = "<li>\n"
      buffer << "#{@caption}\n"
      buffer << "<ul>\n"
      @trays.each do |tray|
        buffer << tray.make_html
      end
      buffer << "</ul>\n"
      buffer << "</li>\n"

      buffer
    end
  end

  class ListPage < Factory::Page
    def initialize(title, author)
      super(title, author)
    end

    def make_html
      bufffer = "<html><head><title>#{@title}</title></head>\n"
      buffer << "<body>\n"
      buffer << "<h1>#{@title}</h1>\n"
      buffer << "<ul>\n"
      @contents.each do |content|
        buffer << content.make_html
      end
      buffer << "</ul>\n"
      buffer << "<address>#{@author}</address>"
      buffer << "</body></html>\n"
      buffer
    end
  end
end
