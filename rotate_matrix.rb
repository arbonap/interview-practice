# Given an NxN matrix of numbers, write a method
# to rotate the image by 90 degrees.
# Can you do this in place?

def rotate_matrix(array_of_arrays) #rotate 90 degrees clockwise
  array_of_arrays.transpose.map(&:reverse)
end

matrix = [ [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9] ]
print matrix.transpose
print "rotates clockwise once: #{rotate_matrix(matrix)}"

def rotate_matrix_counterclockwise(array_of_arrays)
  array_of_arrays.transpose.reverse
end

puts
print "rotates counterclockwise once: #{rotate_matrix_counterclockwise(matrix)}"


### use without .transpose method

# for i = 0 to n
# temp = top[i]
# top[i] = left[i]
# left[i] = botom[i]
# bottom[i] = right[i]
# right[i] = temp
