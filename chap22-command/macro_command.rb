class MacroCommand
  attr_accessor :commands

  def initialize
    @commands = []
  end

  def execute
    @commands.each do |cmd|
      cmd.execute
    end
  end

  def append(cmd)
    @commands << cmd if cmd != self
    puts "Append a histry."
    puts @commands.last
  end

  def undo
    current_history = @commands
    return 'History is nothing.' if current_history.empty?
    puts "Before: #{current_history.last}"
    puts "Undo a histry."
    @commands.pop
    puts "After: #{@commands.last}" if current_history != @commands.last
  end

  def clear
    @commands.clear
    puts "Clear all histries."
  end
end
