require './factory/tray'

class ListTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    buffer = "<li>\n"
    buffer << "#{@caption}\n"
    buffer << "<ul>\n"
    @trays.each { |tray| buffer << tray.make_html }
    buffer << "</ul>\n"
    buffer << "</li>\n"
    buffer
  end
end
