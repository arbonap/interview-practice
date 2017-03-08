class Node(object):
    def __init__(self):
        self.value = value
        self.next = None

class Linkedlist(object):
    def __init__(self):
        self.head = None
    def append_node(self, value):
        new_node = Node(value)
        if self.head is None:
            self.head = new_node
        else:
            current = self.head
            while self.head is not None:
                current = current.next
            current.next = new_node
    def print_LL(self):

        current = self.head

        while current.next is not None:
            print current.value
            current = current.next


    def print_LL(self):

        current = self.head

        while current.next is not None:
            print current.value
            current = current.next
