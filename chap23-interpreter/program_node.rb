require './command_list_node'

# <program> ::= program <command list>
class ProgramNode
  def parse(context)
    context.skip_token('program')
    @command_list_node = CommandListNode.new
    @command_list_node.parse(context)
  end

  def to_string
    "[program #{@command_list_node.to_string}]"
  end
end
