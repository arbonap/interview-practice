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
    return current.next = Node.new(value) if current.next == nil
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(value)
  end

  def delete(node_to_delete)
    next_node = node_to_delete.next

    if next_node
      node_to_delete.value = next_node.value
      node_to_delete.next = node_to_delete.next
    else
      raise "nope, you cannot try to delete the last Node. Sorry~bye"
    end
  end

  def kth_to_last_node(k, head)
    current = @head
    list_length = 1 #initialize list length at 1

    #first find the length of a LinkedList
    while current.next != nil
      current = current.next
      list_length += 1
    end
    how_far_to_walk = list_length - k

    current_node = @head
    how_far_to_walk.times do |i|
      current_node = current.next
    end
    return current_node
  end

  def kth_to_last_node(k, head)
    current = @head
    list_length = 1

    #find list length
    while current != nil
      current = current.next
      list_length += 1
    end

    jumps_to_get_to = k - list_length
    current_node = @head
    jumps_to_get_to.times do |i|
      current_node = current_node.next
    end

    return current_node
  end




def delete_node(node_to_delete)
  next_node = node_to_delete.next

  if next_node
    node_to_delete.value = next_node.value
    node_to_delete.next = next_node.next
  else
    raise 'hell. nope. cannot delete last node. bye'
  end



def kth_to_last_node(k, head)
  current = @head
  list_length = 1

  while current.next != nil
    current = current.next
    list_length += 1
  end

  spot = list_length - k
  current_node = @head
  spot.times do |i|
    current_node = current_node.next
  end
  return current_node
end

def delete_node(node_to_delete)
  next_node = node_to_delete.next

  if next_node
    node_to_delete.value = next_node.value
    node_to_delete.next = next_node.next
  else
    raise "nope, can't delete the last node~~~~BYE"
  end
end


def kth_to_last_node(k, head)

  list_length = 1
  current = @head

  while current.next != nil
    current = current.next
    list_length +=1
  end

  spots_to_go_to = list_length - k
  current_node = @head
  spots_to_go_to.times do |i|
    current_node = current_node.next
  end
  return current_node
end
end
























end
