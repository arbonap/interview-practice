def add_to_zero(nums):
    """ Given a list of ints, return True if any of the two numbers sum to 0"""
    for num in nums:
        for num1 in nums:
            if num + num1 == 0:
                return True
        return False
print add_to_zero([1, -1, 5, 7, 8])
print add_to_zero([5, -5])
print add_to_zero([1,8])

def another_add_to_zero(nums):
    """Taking advantage of a set"""

    set_nums = set(nums)

    for num in nums:
        if -num in set_nums:
            return True
    return False

print another_add_to_zero([1, -1])
