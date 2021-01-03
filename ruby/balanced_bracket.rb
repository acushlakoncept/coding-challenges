# frozen_string_literal: true

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

def balanced_brackets?(string)
  stack = Stack.new
  string.chars.each do |str|
    if str.include?('(') || str.include?('[') || str.include?('{')
      stack.push(str)
    elsif str.include?(')') || str.include?(']') || str.include?('}')
      return false if stack.size.zero?

      top = stack.pop
      return false if top == '(' && str != ')' || top == '[' && str != ']' || top == '{' && str != '}'
    end
  end
  stack.size.zero?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
