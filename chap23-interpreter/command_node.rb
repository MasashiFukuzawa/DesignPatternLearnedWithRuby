require './repeat_command_node'
require './primitive_command_node'

# <command> ::= <repeat command> | <primitive command>
class CommandNode
  def parse(context)
    @node = if context.current_token == 'repeat'
              RepeatCommandNode.new
            else
              PrimitiveCommandNode.new
            end
    @node.parse(context)
  end

  def to_string
    @node.to_string
  end
end
