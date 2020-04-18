class CharDisplay < AbstractDisplay
  def initialize(ch)
    @ch = ch
  end

  private

    def open
      '<<'
    end

    def print_letter
      @ch
    end

    def close
      '>>'
    end
end