def zero_matrix(matrix)
	zero = nil
	matrix.length.times do |row|
		if matrix[row].include?(0)
			matrix[row].each_with_index do |zeros, index|
				if zeros == 0
					zero = index
				else
					matrix[row][index] = 0
				end
			end
		end
	end
	matrix = matrix.transpose
	matrix.length.times do |row|
		if zero == row
			matrix[row].each_with_index do |zeros, index|
				matrix[row][index] = 0
			end
		end
	end
	matrix = matrix.transpose
end
