require './properties'

class Database
  class << self
    def properties(dbname)
      filename = "#{dbname}.txt"
      prop = Properties.new(filename)
    end
  end
end
