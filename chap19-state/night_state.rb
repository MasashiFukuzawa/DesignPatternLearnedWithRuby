require './day_state'

class NightState
  def do_clock(context, hour)
    if hour >= 9 && hour < 17
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.record_log('Emergency: Use safe (night)')
  end

  def do_alarm(context)
    context.call_security_center('Alarm (night)')
  end

  def do_phone(context)
    context.call_security_center('Call record (night)')
  end

  def to_string
    '[night]'
  end

  private

    class << self
      def instance
        @night_state ||= NightState.new
      end
    end
end
