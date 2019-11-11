class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
    attr_reader :head

    def initialize
        @head = nil
    end

    # Push a value onto the stack
    def push(value)
       @head = LinkedListNode.new(value, @head) # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        current_head = @head
        @head = @head.next_node
        return current_head
    end
    
end

def reverse_list(node)
    stack = Stack.new

    while node
        stack.push(node.value)
        node = node.next_node
    end

    return stack.head
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

print_values(reverse_list(node3))