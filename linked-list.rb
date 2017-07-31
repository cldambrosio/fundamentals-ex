class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack
  def pop
    if @data #!= nil
      # Remove the last item that was pushed onto the stack
      stack_top_value = @data.value # save value of first item in the list in a variable
      @data = @data.next_node # overwrite first in the list
      # and return the value to the user
      stack_top_value
    else
      return "nil"
    end
  end
end

def reverse_list(list)
  # puts list.inspect
  @reversed_list = nil          ## initialize
    while list #!= nil
      stack_top = list.value    ## pop/save value of first item in the list in a variable
      list = list.next_node     ## overwrite first in the list
                                ## push value and next_node onto the new stack:
      @reversed_list = LinkedListNode.new(stack_top, @reversed_list)
    end
  @reversed_list
end

def reverse_list_mutation(list, previous=nil)
  while list
    link = list.next_node       ## save the link from the first element to the next one
    list.next_node = previous   ## set the first element to link to previous instead of next
    previous = list             ## change previous to be the first element
    list = link                 ## overwrite the first element in the list
  end
  return previous   
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

node1 = LinkedListNode.new(40)
node2 = LinkedListNode.new(30, node1)
node3 = LinkedListNode.new(20, node2)
node4 = LinkedListNode.new(10, node3)

# stack = Stack.new
# stack.push(1)
# stack.push(2)
# stack.push(33)

# puts stack.pop
# puts stack.pop
# puts stack.pop
# puts stack.pop

print_values(node4)

puts "--------"

revlist = reverse_list(node4)

print_values(revlist)

puts "-----------"

revlist2 = reverse_list_mutation(node4)

print_values(revlist2)