class AbstractDisplay
  def display
    print open
    5.times do
      print print_letter
    end
    puts close
  end

  private

    def open
    end

    def print_letter
    end

    def close
    end
end
