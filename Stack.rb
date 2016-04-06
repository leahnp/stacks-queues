class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    element = @store[-1]
    @store.delete_at(-1)

    # @store.pop
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
