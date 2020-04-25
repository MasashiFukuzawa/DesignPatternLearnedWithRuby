require './random_number_generator'
require './incremental_number_generator'
require './digit_observer'
require './graph_observer'

random_generator = RandomNumberGenerator.new
incremental_generator = IncrementalNumberGenerator.new(10, 50, 5)
observer1 = DigitObserver.new
observer2 = GraphObserver.new

random_generator.add_observer(observer1)
random_generator.add_observer(observer2)
random_generator.execute

incremental_generator.add_observer(observer1)
incremental_generator.add_observer(observer2)
incremental_generator.execute
