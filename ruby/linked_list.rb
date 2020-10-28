class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail, :length
  
  def initialize()
    @head = nil
    @tail = nil  
    @length = 0
  end

  def add(number)
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
    
    @length += 1 
    self
  end

  def get(index)
    return nil if index < 0 || index >= @length

    count = 0 
    result = @head
    while result
      break if count == index
      result = result.next_node
      count += 1
    end
    result.value
  end
  
  def remove(index)
    return nil if index < 0 || index >= @length
    
    count = 0
    current = @head
    prev = current
    
    if index.zero?
      @head = current.next_node
    else
      while current.next_node
        if count == index
          if current.next_node == nil
            @tail = prev
            @tail.next_node = nil
          else
            prev.next_node = current.next_node
          end
        end
        prev = current
        current = current.next_node
        count += 1
      end
      @length -= 1
      self
    end
    
  end
  
  def add_at(index, value)
    return add(value) if @head.nil?
    
    current = @head
    prev = current
    count = 0
    new_node = Node.new(value)
    
    if index.zero?
      @head = new_node
      @head.next_node = current
    else
      while current
        if count == index
          prev.next_node = new_node
          prev.next_node.next_node = current
          break
        end 
        prev = current
        current = current.next_node
        count += 1
      end
    end
    @length += 1 
    self
  end
  
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add(15)
list.add_at(1, 11)
list.add_at(0, 13)
list.add_at(3, 13)
puts '----------------'
p list.get(0)
p list.get(1)
p list.get(2)
p list.remove(0)
puts '----------------'
# => 5

p list