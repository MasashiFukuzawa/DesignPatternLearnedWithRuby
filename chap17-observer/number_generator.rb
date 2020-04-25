class NumberGenerator
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers - [observer]
  end

  def notify_observers
    @observers.each { |o| o.update(self) }
  end

  def number
  end

  def execute
  end
end
