require './factory/link'

class TableLink < Link
  def initialize(caption, url)
    super(caption, url)
  end

  def make_html
    "  <td><a href=#{@url}>@caption</a></td>\n"
  end
end
