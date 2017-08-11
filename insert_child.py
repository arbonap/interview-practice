# to add left subree at root of tree, insert a new list into 2nd position of root list# if list already has something in the 2nd position,
# keep track of it and push it down the tree as the left child of the list we are adding

#left subtree: tree[1]
def insert_left(root, child_val):
    subtree = root.pop(1)

    if len(subtree) > 1:
        root.insert(1, [child_val, subtree, []])
    else:
        root.insert(1, [child_val, [], []])
    return root


def insert_right(root, child_val):
    subtree = root.pop(2)

    if len(subtree) > 1:
        root.insert(2, [child_val, [], subtree])

    else:
        root.insert(2, [child_val, [], []])
    return root
