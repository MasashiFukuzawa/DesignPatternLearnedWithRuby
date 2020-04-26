require './night_state'
require './lunch_time_state'

class DayState
  def do_clock(context, hour)
    if hour < 9 || hour >= 17
      context.change_state(NightState.instance)
    elsif hour >= 12 && hour < 13
      context.change_state(LunchTimeState.instance)
    end
  end

  def do_use(context)
    context.record_log('Use safe (day)')
  end

  def do_alarm(context)
    context.call_security_center('Alarm (day)')
  end

  def do_phone(context)
    context.call_security_center('Normal call (day)')
  end

  def to_string
    '[day]'
  end

  private

    class << self
      def instance
        @day_state ||= DayState.new
      end
    end
end
