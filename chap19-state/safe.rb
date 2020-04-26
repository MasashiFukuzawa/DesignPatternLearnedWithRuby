require './night_state'

class Safe
  attr_accessor :state

  def initialize
    @state = NightState.new
  end

  def action_performed
    random = rand(12)
    if random % 3 == 0
      @state.do_use(self)
    elsif random % 3 == 1
      @state.do_alarm(self)
    elsif random % 3 == 2
      @state.do_phone(self)
    end
  end

  def clock(hour)
    clock_string = 'Current time is '
    if hour < 10
      clock_string << "0#{hour}:00"
    else
      clock_string << "#{hour}:00"
    end
    puts clock_string
    @state.do_clock(self, hour)
  end

  def change_state(latest_state)
    puts "The state changed from #{@state.to_string} to #{latest_state.to_string}."
    @state = latest_state
  end

  def call_security_center(msg)
    puts "call! #{msg}\n"
  end

  def record_log(msg)
    puts "record #{msg}\n"
  end
end
