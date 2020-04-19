require './display'

class StringDisplay < Display
  def initialize(string)
    @string = string
  end

  def columns
    @string.bytes.length
  end

  def rows
    1
  end

  def row_text(row)
    @string if row == 0
  end
end
