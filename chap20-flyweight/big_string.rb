require './big_char'
require './big_char_factory'

class BigString
  def initialize(string, shared)
    factory = BigCharFactory.instance
    @bigchars = string.chars.map { |charname| factory.big_char(charname, shared) }
  end

  def print
    @bigchars.each do |bc|
      bc.print
    end
  end
end
