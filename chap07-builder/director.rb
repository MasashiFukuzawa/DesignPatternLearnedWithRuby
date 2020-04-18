class Director
  attr_reader :builder

  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.make_title('Greeting')
    @builder.make_string('In the morning or afternoon')
    @builder.make_items(['Good morning.', 'Have a good day.'])
    @builder.make_string('At night')
    @builder.make_items(['Good evening.', 'Good night.', 'Good bye.'])
    @builder.close
  end
end
