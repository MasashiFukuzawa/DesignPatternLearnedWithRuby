class Triple
  def initialize(id)
    @id = id
  end

  class << self
    def create_instances
      @instances ||= [Triple.new(0), Triple.new(1), Triple.new(2)]
    end

    def instance(id)
      @instances[id]
    end

    def to_string(id)
      "This instance's id == #{instance(id).id}"
    end
  end
end

Triple.create_instances
puts Triple.instance(0)
puts Triple.instance(1)
puts Triple.instance(2)
puts Triple.instance(3) || '4th instance does not exist.'

puts Triple.to_string(0)
puts Triple.to_string(1)
puts Triple.to_string(2)
