class BigChar
  def initialize(charname)
    @charname = charname
    buf = ''
    begin
      File.open("./big_txt_samples/big#{charname}.txt", 'r').each do |line|
        buf << "#{line}\n"
      end
      @fontdata = charname
      # puts buf
    rescue => e
      @fontdata = "#{charname}?"
    end
  end

  def print
    puts "#{@fontdata} (Instance ID: #{self})"
  end
end
