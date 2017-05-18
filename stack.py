class Stack(object):
    def __init__(self):
        self.__stack = []
    def push(self, item):
        self.__stack.append(item)
    def pop(self):
        return self.__stack.pop()
    def peek(self):
        return self.__stack[-1]
    def is_empty(self):
        return not self.__stack

class Stack(object):
    """ Implement a Stack class without using the pop method. """
    def __init__(self):
        self.stack = []
    def push(self, item):
        self.stack.append(item)
    def pop(self):
        return self.stack[:-1]
    def peek(self):
        return self.stack[-1]
    def empty(self):
        return not self.stack





















class Stack(object):
    def __init__(self):
        self.__stack = []
    def push (self, item):
        self.__stack.append(item)
    def pop(self):
        return self.__stack.pop()
    def peek(self):
        return self.__stack[-1]
    def is_empty(self):
        return not self.__stack
