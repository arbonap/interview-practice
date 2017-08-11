def search_matrix(matrix, target)

    matrix = matrix.flatten
    return false if !matrix.include? target
    midpoint = matrix.length / 2
    if matrix[midpoint] == target
        return true
    else

      if target < matrix[midpoint]
          search_matrix(matrix[0..midpoint], target)
      else
          search_matrix(matrix[midpoint + 1..-1], target)
      end
    end
end
