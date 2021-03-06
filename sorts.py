def bubble_sort(L):
    """Basic bubble sort."""

    for i in range(len(L) - 1):
        for j in range(len(L) - 1):
            if L[j] > L[j + 1]:
                # Pair out-of-order, swap them
                L[j], L[j + 1] = L[j + 1], L[j]


def shorter_bubble_sort(L):
    """Shorter bubble sort."""

    for i in range(len(L) - 1):
        # don't re-check already-sorted
        for j in range(len(L) - 1 - i):
            if L[j] > L[j + 1]:
                # Pair out-of-order, swap them
                L[j], L[j + 1] = L[j + 1], L[j]


def best_bubble_sort(L):
    """Shorter and fast-win bubble sort."""

    for i in range(len(L) - 1):
        # keep track of whether we made a swap
        made_swap = False
        for j in range(len(L) - 1 - i):
            if L[j] > L[j + 1]:
                L[j], L[j + 1] = L[j + 1], L[j]
                made_swap = True
        if not made_swap:
            # If no swap, list already sorted
            break


"""This quick sort is written for ease of understanding. A more
efficient implementation is used in sorts.py."""

# quicksort-start
def quicksort(lst):
    """Quicksort list and return result."""

    if len(lst) < 2:  # if length of lst is 1, return lst
        return lst

    # select pivot element
    mid = int(len(lst) / 2)  # index at half the list
    pivot = lst[mid]

    # partition elements into lo , hi , eq buckets
    lo , hi , eq = [] , [] , []
    for elem in lst :
        if elem < pivot :
            lo.append(elem)
        elif elem == pivot :
            eq.append(elem)
        else :  #  elem > pivot
            hi.append(elem)

    # concatenate sorted buckets and finish
    return quicksort(lo) + eq + quicksort(hi)
# quicksort-end


"""This merge sort is written for ease of understanding. An implementation with
better runtime is implemented in sorts.py."""


def merge_sort(lst):
    """Merge sort list and return result."""

    print "calling merge_sort on", lst

    # Break everything down into a list of one
    if len(lst) < 2:  # if length of lst is 1, return lst
        print "returning", lst
        return lst

    mid = int(len(lst) / 2)  # index at half the list
    lst1 = merge_sort(lst[:mid])  # divide list in half
    lst2 = merge_sort(lst[mid:])  # assign other half

    return make_merge(lst1, lst2)


def make_merge(lst1, lst2):
    """Merge lists."""

    # Compare first items of each pair of lists & interleave
    result_list = []
    print lst1, lst2
    while len(lst1) > 0 or len(lst2) > 0:
        # if items left in both lists
        # compare first items of each list
        if lst1 == []:
            result_list.append(lst2.pop(0))
        elif lst2 == []:
            result_list.append(lst1.pop(0))
        elif lst1[0] < lst2[0]:
            # append and rm first item of lst1
            result_list.append(lst1.pop(0))
        else:
            append and rm first item of lst2
            result_list.append(lst2.pop(0))

    print "returning merge", result_list
    return result_list


print merge_sort([2, 1, 7, 4])
