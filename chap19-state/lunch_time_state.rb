require './day_state'

class LunchTimeState
  def do_clock(context, hour)
    if hour >= 13
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.record_log('Emergency: Use safe (lunch time)')
  end

  def do_alarm(context)
    context.call_security_center('Alarm (lunch time)')
  end

  def do_phone(context)
    context.call_security_center('Call record (lunch time)')
  end

  def to_string
    '[lunch time]'
  end

  private

    class << self
      def instance
        @lunch_time_state ||= LunchTimeState.new
      end
    end
end
