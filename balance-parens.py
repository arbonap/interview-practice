def has_balance_parens(parentheses):
    begin = []
    close = []
    for paren in parentheses:
        if paren == "(":
            begin.append(paren)
        elif paren == ")":
            close.append(paren)

    return len(begin) == len(close)

print has_balance_parens("()")
print has_balance_parens("())")

def another_balance_parens(parentheses):

    parens = 0

    for char in parentheses:
        if char == "(":
            parens += 1
        elif parens == ")":
            parens -= 1


    return parens == 0

print another_balance_parens("()))")
