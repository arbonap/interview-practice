def binary_search(lst, item):

    first = 0
    last = len(lst) - 1
    found = False

    while first <= last and not found:
        midpoint = (first + last) / 2
        if lst[midpoint] == item:
            found = True
        else:
            if item < lst[midpoint]:
                last = midpoint - 1
            else:
                first = midpoint + 1
    return found
print binary_search([5, 6, 7, 8], 10)
print binary_search([5, 6, 7, 8], 8)
