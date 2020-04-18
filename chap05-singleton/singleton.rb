class Singleton
  def initialize
    puts 'Created an instance.'
  end

  def self.instance
    @instance ||= Singleton.new
  end
end
