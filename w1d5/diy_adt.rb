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

stack = Stack.new
stack.push("a")
stack.push("b")
stack.push("c")
stack.push("d")
stack.pop
stack.pop
p stack.peek