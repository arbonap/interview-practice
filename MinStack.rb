class MinStack
    attr_accessor :stack
=begin
    initialize your data structure here.
=end
    def initialize()
        @stack = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        stack.push(x)
    end


=begin
    :rtype: Void
=end
    def pop()
        return nil if stack.length == 0
        stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
        return nil if stack.length == 0
        stack[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        return nil if stack.length == 0
        stack.min
    end


end

# Your MinStack object will be instantiated and called as such:
obj = MinStack.new()
obj.push(5)
obj.push(11)
puts obj.pop()
puts obj.top()
puts obj.get_min()
