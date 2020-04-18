# before
class NotSingletonTicketMaker
  def initialize
    @ticket = 1000
  end

  def next_ticket_number
    @ticket += 1
  end
end

ns_ticket1 = NotSingletonTicketMaker.new
puts ns_ticket1.next_ticket_number
puts ns_ticket1.next_ticket_number

ns_ticket2 = NotSingletonTicketMaker.new
puts ns_ticket2.next_ticket_number
puts ns_ticket2.next_ticket_number

# results
# 1001
# 1002
# 1001
# 1002

# ---------------------------------------

# after
class SingletonTicketMaker
  def initialize
    @ticket = 1000
  end

  def next_ticket_number
    @ticket += 1
  end

  def self.singleton
    @ticket ||= SingletonTicketMaker.new
  end
end

ticket1 = SingletonTicketMaker.singleton
puts ticket1.next_ticket_number
puts ticket1.next_ticket_number

ticket2 = SingletonTicketMaker.singleton
puts ticket2.next_ticket_number
puts ticket2.next_ticket_number

# results
# 1001
# 1002
# 1003
# 1004
