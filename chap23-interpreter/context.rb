require './parse_exception'

class Context
  attr_reader :tokenizer, :current_token

  def initialize(text)
    @tokenizer = StrongTokenizer.new(text)
  end

  def next_token
    if tokenizer.has_more_tokens?
      @current_token = tokenizer.next_token
    else
      @current_token = nil
    end
    @current_token
  end

  def skip_token(token)
    @current_token ||= token
    if token != @current_token
      raise ParseException, "Warning: #{token} is excepted, but #{@current_token} is found."
    end
    next_token
  rescue ParseException => e
    puts e
  end

  def current_number
    @current_token.to_i
  end
end

class StrongTokenizer
  def initialize(text)
    @tokens = text.split(' ')
    @current_token_number = 0
  end

  def has_more_tokens?
    @current_token_number += 1
    !!@tokens[@current_token_number]
  end

  def next_token
    @tokens[@current_token_number]
  end
end
