class Builder
  def initialize
    @initialized = false
  end

  def make_title(title)
    unless @initialized
      build_title(title)
      @initialized = true
    end
  end

  def make_string(str)
    if @initialized
      build_string(str)
    end
  end

  def make_items(items)
    if @initialized
      build_items(items)
    end
  end

  def close
    if @initialized
      build_done
    end
  end
end
