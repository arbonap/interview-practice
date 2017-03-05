def balanced_brackets(string):
    if len(string) % 2 != 0:  #fails fast if length of string is odd
        return False
    opening = '[{(<'
    matches = [('(', ')'), ('{', '}'), ('[', ']'), ('<', '>')]
    seen = []

    for char in string:
        if char in opening:
            seen.append(char)
        else:
            if len(seen) == 0:
                return False
            last_open_bracket = seen.pop()
            if (last_open_bracket, char) not in matches:
                return False
    return len(seen) == 0
print balanced_brackets("(]")

def another_balance_bracket(strang):
    """Function takes in string of brackets, and returns True if brackets are balanced """
    if len(strang) % 2 != 0:
        return False

    open = '(<[{'
    matches = [('(', ')'), ('[', ']'), ('{', '}'), ('<', '>')]
    seen_stack = []

    for char in strang:
        if char in open:
            seen_stack.append(char)
        else:
            last_open_bracket = seen_stack.pop()
            if (last_open_bracket, char) not in matches:
                return False
    return len(seen_stack) == 0

print another_balance_bracket("<>")
print another_balance_bracket("<<")
