#Rotate a given array n number of times to the left.

def left_rotation(ary, num_of_rotations)
  ary.rotate(-num_of_rotations)
end

p left_rotation([1, 2, 3], 4)
