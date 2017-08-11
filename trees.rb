# BFS is best used for optimum solution
# can take a very long time for broad/deep data sets
#DFS is much faster, but will get you the ~first~
#solution, but not necessarily the best solution.

#shift is like popleft (pops from start)
#unshift is like insert at 0 (prepends)


# You'll build a simple binary tree data structure from some arbitrary input and also the "crawler" function that will locate data inside of it.
#
# Build a class Node. It should have a value that it stores and also links to its parent and children (if they exist). Build getters and setters for it (e.g. parent node, child node(s)).
# Write a method build_tree which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) and turns it into a binary tree full of Node objects appropriately placed. Start by assuming the array you get is sorted.
# Now refactor your build_tree to handle data that isn't presorted and cannot be easily sorted prior to building the tree. You'll need to figure out how to add a node for each of the possible cases (e.g. if it's a leaf versus in the middle somewhere).
# Write a simple script that runs build_tree so you can test it out.
# Build a method breadth_first_search which takes a target value and returns the node at which it is located using the breadth first search technique. Tip: You will want to use an array acting as a queue to keep track of all the child nodes that you have yet to search and to add new ones to the list (as you saw in the video). If the target node value is not located, return nil.
# Build a method depth_first_search which returns the node at which the target value is located using the depth first search technique. Use an array acting as a stack to do this.
# Next, build a new method dfs_rec which runs a depth first search as before but this time, instead of using a stack, make this method recursive.
# Tips:
#
# You can think of the dfs_rec method as a little robot that crawls down the tree, checking if a node is the correct node and spawning other little robots to keep searching the tree. No robot is allowed to turn on, though, until all the robots to its left have finished their task.
# The method will need to take in both the target value and the current node to compare against.
# Very generally,
# BFS is Queue-like:
#
# list nodes_to_visit = {root};
# while( nodes_to_visit isn't empty ) {
#   currentnode = nodes_to_visit.take_first();
#   nodes_to_visit.prepend( currentnode.children );
#   //do something
# }
# DFS is Stack-like:
#
# list nodes_to_visit = {root};
# while( nodes_to_visit isn't empty ) {
#   currentnode = nodes_to_visit.take_first();
#   nodes_to_visit.append( currentnode.children );
#   //do something
# }
class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class Tree
  attr_accessor :root
  def initialize(data)
    @root = nil
    build_tree(data)
  end

  def build_tree(data)
    root = data.shift #shift is like popleft. pop from the "front"
    @root = Node.new(root) if @root.nil?
    data.map do |value|
      node = Node.new(value)
      insert_node(node)
    end
  end

  def insert_node(new_node, current_node=@root)
    if new_node.value <= current_node.value
      if current_node.left.nil?
        current_node.left = new_node
      else
        insert_node(new_node, current_node.left)
      end
    elsif
      if current_node.right.nil?
        current_node.right = new_node
      else
        insert_node(new_node, current_node.right)
      end
    end
  end

  def breadth_first_search(target)
    #queue like, FIFO
    #shift is like popleft
    queue = [@root]

    until queue.empty?
        current = queue.shift
        return current if current.value == target
        queue.push(current.left) if current.left != nil
        queue.push(current.right) if current.right != nil
    end
    nil
  end
end

def recurisve_depth_first_search(current=@root, target_node)
    return current if target_node == current.value

    recursive_depth_first_search(current.left, target_node) if current.left != nil
    recursive_depth_first_search(current.right, target_node) if current.right != nil
    nil
end
