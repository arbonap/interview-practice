def remove_odd_nums(array):
    """ Remove odd numbers from a given array"""
    for num in array:
        if num % 2 != 0:
            array.remove(num)
    return array
print remove_odd_nums([1, 2, 3, 4, 5, 6, 7])
