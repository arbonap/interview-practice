def move_zeros_to_tail(array):
    zeros = []
    for num in array:
        if num == 0:
            zeros.append(num)
            array.remove(num)
    array.extend(zeros)
    return array

print move_zeros_to_tail([0, 0, 1, 2, 3, 5, 0])
