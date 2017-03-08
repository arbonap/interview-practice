class LLNode(Object):
    def __init__(self):
        self.value = value
        self.next = None

class LList(Object):
    def __init__(self):
        self.head = None

    def append_node(self, value):
        new_node = Node(value)

        if self.head is None:
            self.head = new_node
        else:
            current = self.head

            while current.next is not None:
                current = current.next

            current = new_node
