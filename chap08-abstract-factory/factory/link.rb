require './factory/item'

class Link < Item
  def initialize(caption, url)
    super(caption)
    @url = url
  end
end
