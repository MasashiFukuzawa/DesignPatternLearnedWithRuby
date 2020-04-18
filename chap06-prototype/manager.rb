class Manager
  def initialize
    @showcase = {}
  end

  def register(name, proto)
    @showcase[name] = proto
  end

  def create(protoname)
    p = @showcase[protoname]
    p.create_clone
  end
end
