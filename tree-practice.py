class Node(object):
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

    def insert_left(self, child):
        if self.left is None:
            self.left = child
        else:
            child.left = self.left
            self.left = child

    def insert_right(self, child):
        if self.left is None:
            self.left = child
        else:
            child.left = self.left
            self.left = child


# if we have a nested list representation of a tree

    def insert_left(root, child_val):
        subtree = root.pop(1) # we pop from 1th index since this is the left node
        if len(subtree) > 1:
            root.insert(1, [child_val, subtree, []])
        else:
            root.insert(1, [chilld_val, [], []])
        return root

    def insert_right(root, child_val):
        subtree = root.pop(2)
        if len(subtree) > 1:
            root.insert(2, [child_val, [], subtree])
        else:
            root.insert(2,[child_val, [], []])
        return root

    def insert_left(root, child_node):
        subtree = root.pop(1)
        if len(subtree) > 1:
            root.insert(1, [child_node, subtree, []])
        else:
            root.insert(1, [child_node, [], []])
        return root

    def insert_right(root, child_node):
        subtree = root.pop(2)
        if len(subtree) > 1:
            root.insert(2, [child_node, [], subtree])
        else:
            root.insert(2, [child_node, [], []])
        return root

    def get_root_val(root):
        return root[0]
    def set_root_val(root, new_val):
        root[0] = new_val

    def get_root_val(root):
        return root[0]
    def set_root_val(root, new_val):
        root[0] = new_val
    def get_left_child(root):
        return root[1]
    def get_right_child(root):
        return root[2]
