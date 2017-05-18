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

    def contains_cycle(first_node):

    # start both runners at the beginning
    slow_runner = first_node
    fast_runner = first_node

    # until we hit the end of the list
    while fast_runner is not None and fast_runner.next is not None:
        slow_runner = slow_runner.next
        fast_runner = fast_runner.next.next

        # case: fast_runner is about to "lap" slow_runner
        if fast_runner is slow_runner:
            return True

    # case: fast_runner hit the end of the list
    return False
