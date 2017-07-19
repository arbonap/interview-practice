def multiply_two_arrays(a, b)
  a.zip(b).map{|x, y| x * y}
end
