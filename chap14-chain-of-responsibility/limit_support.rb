require './support'

class LimitSupport < Support
  def initialize(name, limit)
    @name = name
    @limit = limit
  end

  def resolve(trouble)
    trouble.number < @limit
  end
end
