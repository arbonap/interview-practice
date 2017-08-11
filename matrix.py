def zero_matrix(matrix):
    num_of_rows = len(matrix)
    num_of_cols = len(matrix[0])

    rows_with_zero = [False] * num_of_rows
    cols_with_zero = [False] * num_of_cols

    for r in range(num_of_rows):
        for c in range(num_of_cols):
            if matrix[r][c] == 0:
                rows_with_zero[r] = True
                cols_with_zero[c] = True


    for r in range(num_of_rows):
        for c in range(num_of_cols):
            if rows_with_zero[r] or cols_with_zero[c]:
                matrix[r][c] = 0

    return matrix


print zero_matrix([[1, 2, 0], [4, 5, 6], [7, 8, 9]])
