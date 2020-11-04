# Start with your code from LinkedList challenge.
class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
  
  
  class Queue
    attr_accessor :first, :last, :size
    
    def initialize
      @first = nil
      @last = nil
      @size = 0
    end
  
    def add(number)
      new_node = Node.new(number)
      
      if @first.nil?
        @first = new_node
        @last = new_node
      else
        @last.next_node = new_node
        @last = new_node
      end
      @size += 1
    end
    
    def remove
      return -1 if @first.nil?
      
      temp = @first
      if @first == @last
        @last = nil
      end
      @first = @first.next_node
      @size -= 1
      temp.value
    end
  end
  
  queue = Queue.new
  
  queue.add(3)
  queue.add(5)
  puts queue.remove
  # => 3
  
  queue.add(2)
  queue.add(7)
  puts queue.remove
  # => 5
  
  puts queue.remove
  # => 2
  
  puts queue.remove
  # => 7
  
  puts queue.remove
  # => -1