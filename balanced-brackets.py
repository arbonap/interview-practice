def balanced_brackets(expr):
    """Takes in a string, and returns True or False if brackets are balanced."""
    if len(expr) % 2 != 0: #checks if num of chars in string is even or not. if odd, fails fast
        return False
    opening = "[{<("
    match = [ ('(',')'), ('[',']'), ('{','}'), ('<', '>') ]
    stack = []
    for char in expr:
        if char in opening:
            stack.append(char)
        else:
            if len(stack)== 0:
                return False
            last_open_bracket = stack.pop()
            if (last_open_bracket, char) not in match:
                return False
    return len(stack) == 0

print balanced_brackets("<>")
