class Display
  def columns
  end

  def rows
  end

  def row_text(row)
  end

  def show
    rows.times { |i| puts row_text(i) }
  end
end
