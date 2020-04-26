class PrinterProxy
  attr_reader :name, :real

  def initialize(real)
    @real = real
    @name = real.name
  end

  def name=(name)
    real.name = name
    @name = name
  end

  def output(string)
    real.output(string)
  end
end
