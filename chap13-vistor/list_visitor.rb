require './visitor'

class ListVisitor < Visitor
  def initialize
    @current_dir = ""
  end

  def visit(file_or_directory)
    puts "#{@current_dir}/#{file_or_directory.name}"
    visit_dir(file_or_directory) if file_or_directory.respond_to?(:dir)
  end
end
