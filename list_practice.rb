class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value)
  end

  def add(value)
    current = @head
    current = Node.new(value) if current.next == nil
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(value)
  end

  def delete(node_to_delete)
    next_node = node_to_delete.next

    if next_node
      node_to_delete.value = next_node.value
      node_to_delete.next = next_node.next
    else
      raise "Sorry, cannot delete last node."
    end
  end

  def kth_to_last_node(k, node_to_delete)
    length = 0
    current = @head
    while current.next != nil
      current = current.next
      length += 1
    end

    distance_to_go = length - k

    distance_to_go.times do |item|
      current = @head
      current = current.next
      current
    end
  end

  def has_cycle?(first_node=@head)
    slow_runner = first_node
    fast_runner = first_node

    while first
  end
end
