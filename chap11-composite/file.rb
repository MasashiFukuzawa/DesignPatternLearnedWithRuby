class File < Entry
  attr_reader :name, :size

  def initialize(name, size)
    super(name)
    @size = size
  end

  def add(entry)
    raise 'ファイルに対してaddメソッドは呼び出せません。'
  end

  def print_list(prefix)
    puts "#{prefix}/#{self.to_string}"
  end
end
