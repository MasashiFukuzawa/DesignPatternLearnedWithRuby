class Aggregate
  def initialize
    @books = []
    @last  = 0
  end

  def iterator
    raise 'Abstract method is called.'
  end
end