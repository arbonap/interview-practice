def zero_matrix(matrix)

  num_of_rows = matrix.length
  num_of_cols = matrix[0].length
  puts num_of_rows
  puts num_of_cols
  puts matrix[0][0]
  rows_with_zero = [false] * num_of_rows
  cols_with_zero = [false] * num_of_cols

  for r in (0..num_of_rows)
    for c in (0..num_of_cols)
      if matrix[r][c] == 0
        rows_with_zero[r] = true
        cols_with_zero[c] = true
      end
    end
  end

  for r in (0..num_of_rows)
    for c in (0..num_of_cols).map
      if rows_with_zero[r] == true || cols_with_zero[c] == true
        matrix[r][c] = 0
      end
    end
  end
  matrix
end



puts zero_matrix([[1, 2, 0,], [4, 5, 6], [7, 8, 9]])
