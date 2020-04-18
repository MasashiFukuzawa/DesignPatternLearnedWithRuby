class PrintBanner
  def initialize(string)
    @banner = Banner.new(string)
  end

  def print_weak
    @banner.show_with_paren
  end

  def print_strong
    @banner.show_with_aster
  end
end
