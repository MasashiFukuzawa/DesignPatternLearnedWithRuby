class RandomCountDisplay < CountDisplay
  def random_display(max_times)
    multi_display(rand(1..max_times))
  end
end
