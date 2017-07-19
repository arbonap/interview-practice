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

    # get the input node's next node, the one we want to skip to
    next_node = node_to_delete.next

    if next_node

        # replace the input node's value and pointer with the next
        # node's value and pointer. the previous node now effectively
        # skips over the input node
        node_to_delete.value = next_node.value
        node_to_delete.next  = next_node.next

    else

        # eep, we're trying to delete the last node!
        raise "Can't delete the last node with this method!"
    end
  end


  def delete_node(node_to_delete)

    next_node = node_to_delete.next

    if next_node

      node_to_delete.value = next_node.value
      node_to_delete.next = next_node.next

    else
      raise "Nope, can't delete last node"
    end
  end

  def delete_node(node_to_delete)

    next_node = node_to_delete.next

    if next_node
      node_to_delete.value = next_node.value
      node_to_delete.next = next_node.next
    else
      raise Exception, "Nope"
    end

  end

  def delete_node(node_to_delete)

    next_node = node_to_delete.next

    if next_node
      node_to_delete.value = next_node.value
      node_to_delete.next = next_node.next
    else
      raise "Exception!!!!"
    end


  end

def delete_node(node_to_delete)
  next_node = node_to_delete.next

 if next_node
    node_to_delete.value = next_node.value
    node_to_delete.next = next_node.next
 else
   raise Exception "nope"
 end
end




 def delete_node(node_to_delete)
   next_node = node_to_delete.next

   if next_node
     node_to_delete.next = next_node.next
     node_to_delete.value = next_node.value
  else
    raise "hell"
   end
 end


 def delete_node(node_to_delete)
   next_node = node_to_delete.next

   if next_node
     node_to_delete.next = next_node.next
     node_to_delete.value = next_node.value
   else
    raise "hell"
   end
 end

def delete_node(node_to_delete)
  next_node = node_to_delete.next

  if next_node
    node_to_delete.next = next_node.next
    node_to_delete.value = next_node.value
  end
  raise Error "Sorry, you can't delete this last node. "
  end
end


 def delete_node(node_to_delete)
   next_node = node_to_delete.next

   if next_node
     node_to_delete.value = next_node.value
     node_to_delete.next = next_node.next
   end
   raise "hell!"
 end

end

def delete_node(node_to_delete)
  next_node = node_to_delete.next

  if next_node
    node_to_delete.value = next_node.value
    node_to_delete.next = next_node.next
  else
    raise "nope, cannot delete last node. byeeee"

  end

def kth_to_last_node(k, node_to_delete)
  list_length = 1
  current = @head

  #first, find the entire length of the LL
  while current.next != nil
    current = current.next
    list_length += 1
  end
  spots_to_go_to_k = list_length - k
  current_node = @head
  spots_to_go_to_k.times do |i|
      current_node = current_node.next
  end
  return current_node
end

  def has_cycle(first_node)
    slow_runner = first_node
    fast_runner = first_node

    while first_pointer != nil && first_pointer.next != nil
      slow_runner = slow_runner.next
      fast_runner = fast_runner.next.next

      return true if slow_runner == fast_runner
    end
    return false
  end
end

























end
