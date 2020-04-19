class CountDisplay < Display
  def multi_display(times)
    open
    times.times do |i|
      print
    end
    close
  end
end
