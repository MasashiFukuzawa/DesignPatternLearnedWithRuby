class StringDisplay < AbstractDisplay
  def initialize(string)
    @string = string
    @width  = string.bytesize
  end

  private

    def open
      print_line
    end

    def print_letter
      puts "|#{@string}|"
    end

    def close
      print_line
    end

    def print_line
      puts "+#{'-' * @width}+"
    end
end