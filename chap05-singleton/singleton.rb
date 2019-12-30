class Singleton
  def initialize
    @instance = Singleton.new
    puts 'インスタンスを生成しました。'
  end

  def self.instance
    @instance
  end
end
