def binary_search(lst, item):
    lst = sorted(lst)
    first = 0
    last = len(lst) - 1
    found = False

    while first <= last and not found:
        midpoint = (first + last) / 2
        if lst[midpoint] == item:
            return True
        else:
            if lst[midpoint] < item:
                last = midpoint - 1
            if lst[midpoint] > item:
                first = midpoint + 1
    return found
