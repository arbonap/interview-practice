class Node(object):
    def __init__(self):
        self.value = value
        self.next = None

class Linkedlist(object):
    def __init__(self):
        self.head = head

    def append_node(self, value):
        new_node = Node(value)
        if self.head is None:
            self.head = new_node
        else:
            current = self.head
            while current.next is not None:
                current = current.next
            current.next = Node(value)

    def print_nodes(self):
        current = self.head
        while current is not None:
            print current.value
            current = current.next

    def delete_node(self, node_to_delete):

        next_node = node_to_delete.next_node

        if next_node:
            node_to_delete.value = next_node.value
            node_to_delete.next = next_node.next

        else:
            raise Exception('nope! end of the line')





















    def append_node(self, value):
        new_node = Node(value)

        if self.head is None:
            self.head = new_node

        else:
            current = self.head

            while current.next is not None:
                current = current.next
            current.next = new_node

    def print_nodes(self):
        current = self.head
        while current is not None:
            print current.value
            current = current.next

    def print_nodes(self):
        current = self.head
        while current is not None:
            print current.value
            current = current.next


    def delete_node(node_to_delete):

        next_node = node_to_delete.next

        if next_node:
            node_to_delete.value = next_node.value
            node_to_delete.next = next_node.next

        else:
            raise Exception('nope, cannot)
