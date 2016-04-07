class Queue
  attr_reader :store

  def initialize
    @store = Array.new
  end
  
  def dequeue
    @store.pop
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
