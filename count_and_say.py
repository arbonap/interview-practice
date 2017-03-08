def count_and_say(n):
    """
    :type n: int
    :rtype: str
    """
    # convert the int to a string
    num_string = '1'

    # the loop
    while n > 1:
        new_str = ''
        num = num_string[0]
        count = 0
        for i in num_string:
            if i == num:
                count += 1
            else:
                new_str += str(count) + num
                count = 1
                num = i
        new_str += str(count) + num
        num_string = new_str
        n -= 1

    # the result
    return num_string
print count_and_say(3)
