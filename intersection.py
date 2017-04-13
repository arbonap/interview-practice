def intersection_of_lists(lista, listb):
    """ Find the intersection of two arrays. """
    return list(set(lista).intersection(set(listb)))

print intersection_of_lists([1, 2, 3], [3, 4, 5])

def union_of_lists(lista, listb):
    """ Find the union of two arrays. """
    return list(set(lista).union(set(listb)))
print union_of_lists([1, 2, 3], [3, 4, 5])

def symmetric_difference(lista, listb):
    """ Find the difference between two arrays. """
    return list(set(lista).symmetric_difference(set(listb)))
print symmetric_difference([1, 2, 3], [3, 4, 5])
