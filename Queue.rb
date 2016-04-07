class Queue
  attr_reader :store
  
  def initialize
    @store = Array.new
  end
  
  def dequeue
    last = @store.last
    @store.pop
    return last
  end
  
  def enqueue(element)
    @store.unshift(element)
  end
  
  def size
    @store.length
  end

  def empty?
    size == 0
  end
end
