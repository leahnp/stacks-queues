class Stack
  attr_reader :store

  def initialize
    @store = Array.new
  end
  
  def pop
    last = @store.last
    @store.pop
    return last
  end
  
  def push(element)
    @store << element
  end
  
  def size
    @store.length
  end

  def empty?
    size == 0
  end
end
