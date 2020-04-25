class GraphObserver
  def update(generator)
    print "GraphObserver:"
    count = generator.number
    count.times { |_| print "*" }
    puts ""
    sleep(0.5)
  end
end
