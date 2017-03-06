def recursive_binary_search(lst, item):
    lst = sorted(lst)
    if len(lst) == 0:
        return False
    else:
        midpoint = len(lst) / 2
        if lst[midpoint] == item:
            return True
        else:
            if item < lst[midpoint]:
                return recursive_binary_search(lst[:midpoint], item)
            else:
                return recursive_binary_search(lst[midpoint + 1:], item)

lst = [5, 2, 9, 11, 0, 3, 99, 66, 4]
print recursive_binary_search(lst, 11)
print recursive_binary_search(lst, 10)

def recursive_binary_search(lst, item):
    lst = sorted(lst)
    if len(lst) == 0:
        return False
    else:
        midpoint = len(lst) / 2
        if lst[midpoint] == item:
            return True
        else:
            if item < lst[midpoint]:
                return recursive_binary_search(lst[:midpoint], item)
            else:
                return recursive_binary_search(lst[midpoint + 1:], item)


def recursive_binary_search(lst, item):
    lst = sorted(lst) #binary search only works with a sorted list/array!
    if len(lst) == 0: #this is our breaking base case. if there's no more ints in the array to search, we lose
        return False
    else:
        midpoint = len(lst) / 2 #midpoint index
        if lst[midpoint] == item: #if
            return True #we win
        else:
            if item < lst[midpoint]:
                return recursive_binary_search(lst[:midpoint], item)
            else:
                return recursive_binary_search(lst[:midpoint + 1], item)


def recursive_binary_search(lst, item):
    lst = sorted(lst)
    if len(lst) == 0:
        return False
    else:
        midpoint = len(lst) / 2
        if lst(midpoint) == item:
            return True
        else:
            if item < lst[midpoint]:
                return recursive_binary_search(lst[:midpoint])
