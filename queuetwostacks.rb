#create a queue class, with enqueue and dequeue methods
class QueueTwoStacks
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def enqueue(value)
    @in_stack.push(value)
  end

  def dequeue
    if @out_stack.empty?
      while !@in_stack.empty?
        value_to_be_added = @in_stack.pop
        @out_stack.push(value_to_be_added)
      end
    return nil if @out_stack.empty?
    end
    @out_stack.pop
  end
end
