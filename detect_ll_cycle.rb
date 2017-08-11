require 'set'

class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :head
  def initialize(value)
    @head = Node.new(value)
  end

  def add(value)
    current = @head
    return current.next = Node.new(value) if current.next == nil
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(value)
  end

  def has_duplicate?(head)
    seen = Set.new
    current = @head
    while current.next != nil
      if !seen.include? current.value
        seen.add(current.value)
      else
        return true
      end
    end
    false
  end

  def has_cycle?(first_node)
    fast_runner = first_node
    slow_runner = first_node

    while fast_runner != nil && fast_runner.next != nil
      slow_runner = slow_runner.next
      fast_runner = fast_runner.next.next

      return true if slow_runner == fast_runner
    end
    false
  end
end
