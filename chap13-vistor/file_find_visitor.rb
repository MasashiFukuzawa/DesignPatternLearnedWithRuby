require './visitor'

class FileFindVisitor < Visitor
  def initialize(filetype)
    @current_dir = ""
    @filetype = filetype
  end

  def visit(file_or_directory)
    visit_dir(file_or_directory) if file_or_directory.respond_to?(:dir)
    filename = "#{@current_dir}/#{file_or_directory.name}"
    puts filename if filename.match(/#{@filetype}/)
  end
end
