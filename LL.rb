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
    current.next = Node.new(value) if current.next == nil
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(value)
  end

  def delete_node(node_to_delete)
    next_node = node_to_delete.next

    if next_node
      node_to_delete.value = next_node.value
      node_to_delete.next = next_node.next
    else
      raise "Nope, can't delete the last node. sorry."
    end

  end

  def kth_to_last_node(k, head)
    current = @head

    list_length = 1
    #first find the entire length of the LL
    while current.next != nil
      current = current.next
      list_length += 1
    end

    spots_to_kth_node = list_length - k

    current_node = @head
    spots_to_kth_node.times do |i|
      current_node = current.next
    end
    current_node
  end
end
