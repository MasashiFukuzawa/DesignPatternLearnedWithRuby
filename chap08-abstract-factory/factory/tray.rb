require './factory/item'

class Tray < Item
  def initailize(caption)
    super(caption)
  end

  def add(item)
    @trays ||= []
    @trays << item
  end
end
