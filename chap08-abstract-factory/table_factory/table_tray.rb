require './factory/tray'

class TableTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    buffer = "<td>\n"
    buffer = "<table width=\"100%\" border=\"1\"><tr>"
    buffer = "<td bgcolor=\"#cccccc\" align=\"center\" colsplan=\"#{@trays.size}\"><b>#{@caption}</br></td>"
    buffer << "</tr>\n"
    buffer << "<tr>\n"
    @trays.each { |tray| buffer << tray.make_html }
    buffer << "</tr></table>\n"
    buffer << "</td>\n"
    buffer
  end
end
