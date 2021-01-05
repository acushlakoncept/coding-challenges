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

  def clear
    @first = nil
    @last = nil
    @size = 0
  end
end

def swap_gn(string)
  stack = Stack.new
  pos = 0

  string.chars.each_with_index do |char, indx|
    if char == 'g'
      if string[indx + 1] == 'n'
        stack.push(char)
        pos = indx
      end
    elsif char == 'n' && !stack.size.zero?
      str = stack.pop
      string[pos] = char
      string[indx] = str
    end
  end
end

def transpose(string)
  swap_gn(string) while string.include?('gn')

  string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
