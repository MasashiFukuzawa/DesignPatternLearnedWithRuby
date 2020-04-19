class FileDisplayImpl
  def initialize(filename)
    @filename = filename
  end

  def raw_open
    @file = File.new(@filename, 'r')
  end

  def raw_print
    begin
      @file.each { |line| puts "#{@file.lineno}: #{line}" }
    rescue => e
      e.message
    end
  end

  def raw_close
    @file.close
  end
end
