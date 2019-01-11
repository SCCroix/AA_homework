require "byebug"
class Stack
  attr_reader :stack

  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push(el)
    nil
  end

  def pop
    # removes one element from the stack
    @stack.pop
    nil
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end

# stack = Stack.new
# stack.push("a")
# stack.push("b")
# stack.push("c")
# stack.push("d")
# stack.pop
# stack.pop
# p stack.peek
class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    #will add to the back of the queue
    @queue.unshift(el)
    nil
  end

  def dequeue
    @queue.pop
    nil
  end

  def peek
    @queue.last
  end
end

# queue = Queue.new
# queue.enqueue("a")
# queue.enqueue("b")
# queue.enqueue("c")
# queue.enqueue("d")
# queue.dequeue
# queue.dequeue
# p queue.peek

class Map
  def initialize
      @map = []
  end

  def set(key, value)
    idx = nil

    @map.each_with_index do |pair, index|
      k, v = pair
      if k == key
        idx = index
      end
    end

    if idx
      @map[idx][1] = value
    else
      @map << [key, value]
    end
    nil    
  end

  def get(key)
    debugger
    @map.each_with_index do |pair, index|
      k, v = pair
      if k == key
        return v
      else
        return nil
      end
    end
  end

  def delete(key)
    
  end

  def show
    
  end
end

# map = Map.new
# map.set("hello", "world")
# map.set(3, :nice)
# map.set("spencer", 12)
# map.show
# map.get("spencer")
