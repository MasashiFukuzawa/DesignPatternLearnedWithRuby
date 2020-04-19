require './border'

class FullBorder < Border
  def columns
    1 + @display.columns + 1
  end

  def rows
    1 + @display.rows + 1
  end

  def row_text(row)
    if row == 0 || row == @display.rows + 1
      "+#{make_line('-', @display.columns)}+"
    else
      "|#{@display.row_text(row - 1)}|"
    end
  end

  private

    def make_line(ch, count)
      buf = ''
      count.times do |_|
        buf << ch
      end
      buf
    end
end
