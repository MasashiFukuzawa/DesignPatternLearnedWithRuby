class Properties
  def initialize(filename)
    @filename = filename
  end

  def property(mailaddr)
    File.open(@filename, 'r') do |f|
      f.read.split("\n").each do |line|
        break line.split('=')[1] if line.match(/#{mailaddr}/)
      end
    end
  end
end
