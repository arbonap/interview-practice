def reverse_integer(num):
    """ Reverse an integer. """
    stringified_num = str(num)
    output = []
    for char in stringified_num:
        output.insert(0, char)
    return int("".join(output))

print reverse_integer(432)
