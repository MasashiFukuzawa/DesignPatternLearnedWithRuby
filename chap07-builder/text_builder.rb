class TextBuilder < Builder
  def build_title(title)
    @buffer = ''
    @buffer << "============================\n"
    @buffer << "『#{title}』\n"
    @buffer << "\n"
  end

  def build_string(str)
    @buffer << "■ #{str}\n"
    @buffer << "\n"
  end

  def build_items(items)
    items.each do |item|
      @buffer << " ・#{item}\n"
    end
    @buffer << "\n"
  end

  def build_done
    @buffer << "============================\n"
  end

  def result
    @buffer
  end
end
