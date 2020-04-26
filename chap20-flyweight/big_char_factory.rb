require './big_char'

class BigCharFactory
  def initialize
    @pool = {}
  end

  def big_char(charname, shared)
    bc = @pool[charname]
    if bc.nil? || !shared
      bc = BigChar.new(charname)
      @pool[charname] = bc
    end
    bc
  end

  class << self
    def instance
      @singleton ||= BigCharFactory.new
    end
  end
end
