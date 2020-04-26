class Printer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def output(string)
    heay_job('Creating Printer instance...')
    puts "=== #{name} ==="
    puts string
  end

  private

    def heay_job(msg)
      print msg
      5.times do |i|
        sleep(0.5)
        print '.'
      end
      puts 'Completed.'
    end
end
