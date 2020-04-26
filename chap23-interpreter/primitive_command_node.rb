require './parse_exception'

# <primitive command> ::= go | right | left
class PrimitiveCommandNode
  def parse(context)
    @name = context.current_token
    context.skip_token(@name)
    raise ParseException, "#{@name} is undefined." unless %w[go right left].include?(@name)
  rescue ParseException => e
    puts e
  end

  def to_string
    @name
  end
end
