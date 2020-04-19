class Visitor
  def visit_dir(directory)
    savedir = @current_dir
    @current_dir = "#{@current_dir}/#{directory.name}"
    dir = directory.dir
    dir.each { |d| d.accept(self) }
    @current_dir = savedir
  end
end
