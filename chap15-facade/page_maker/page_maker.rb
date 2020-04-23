require './page_maker/database'
require './page_maker/html_writer'

class PageMaker
  class << self
    def make_welcome_page(mailaddr, filename)
      begin
        mailprop = Database.properties("maildata")
        username = mailprop.property(mailaddr)
        writer = HtmlWriter.new(File.new(filename, 'a'))
        writer.title("Welcome to #{username}'s page!'")
        writer.paragraph("#{username}のページへようこそ。")
        writer.paragraph("メール待っていますね。")
        writer.mailto(mailaddr, username)
        writer.close
        puts "#{filename} is created for #{mailaddr} (#{username})"
      rescue => e
        puts e.message
      end
    end
  end
end
