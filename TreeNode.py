class Node(object):
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

    def self.insert_left(self, child):
        if self.left is None:
            self.left = child
        else:
            child.left = self.left
            self.left = child

    def self.insert_right(self, child):
        if self.right is None:
            self.right = child
        else:
            child.right = self.right
            self.right = child

    def self.insert_left(root, child_val):
        subtree = root.pop(1)
        if len(subtree) > 1:
            root.insert(1, [child_val, subtree, []])
        else:
            root.insert(1, [child_val, [], []])
        return root

    def self.insert_right(root, child_val):
        subtree = root.pop(2)
        if len(subtree) > 1:
            root.insert(2, [child_val, [], subtree])
        else:
            root.insert(2, [child_val, [], []])
        return root

# hierarchy of the tree helps us understand the order of
# evaluation for whole expression
# using heirarchical structure of trees,
# we can simply replace an entire subtree with oen node
# once we have evaluated the expressions in the children
#


# preorder: In a preorder traversal, we visit the root node first, then recursively do a preorder traversal of the left subtree, followed by a recursive preorder traversal of the right subtree.
#
# inorder: In an inorder traversal, we recursively do an inorder traversal on the left subtree, visit the root node, and finally do a recursive inorder traversal of the right subtree.
#
# postorder: In a postorder traversal, we recursively do a postorder traversal of the left subtree and the right subtree followed by a visit to the root node.
