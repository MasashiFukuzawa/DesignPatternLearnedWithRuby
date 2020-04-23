class Support
  def initialize(name)
    @name = name
  end

  def next_support(next_supporter)
    @next_supporter = next_supporter
  end

  def support(trouble)
    if resolve(trouble)
      done(trouble)
    elsif @next_supporter
      @next_supporter.support(trouble)
    else
      fail(trouble)
    end
  end

  def to_string
    "[#{@name}]"
  end

  def resolve(trouble)
  end

  def done(trouble)
    puts "#{trouble.to_string} is resolved by #{@name}."
  end

  def fail(trouble)
    puts "#{trouble.to_string} cannot be resolved."
  end
end
