def getIntegerComplement(n):
    remainder_stack = []

    while n > 0:
        remainder = n % 2
        remainder_stack.append(remainder)
        n = n // 2

    binary_digits = []
    while remainder_stack:
        binary_digits.append(str(remainder_stack.pop()))

    to_binary = ''.join(binary_digits)
    print to_binary
    output = []
    for char in to_binary:
        if char == '1':
            output.append('0')
        elif char == '0':
            output.append('1')
    binary_complement = ''.join(output)
    print binary_complement
    return int(binary_complement, 2)

print getIntegerComplement(42)  # => '101010'
