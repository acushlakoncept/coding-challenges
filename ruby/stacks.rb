# frozen_string_literal: true

# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_accessor :first, :last, :size

  def initialize
    @first = nil
    @last = nil
    @size = 0
  end

  def push(number)
    new_node = Node.new(number)

    if @first.nil?
      @first = new_node
      @last = new_node
    else
      temp = @first
      @first = new_node
      @first.next_node = temp
    end
    @size += 1
  end

  def pop
    return nil if @first.nil?

    temp = @first
    @last = nil if @first == @last
    @first = @first.next_node
    @size -= 1

    temp.value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
