# make a function to check if
# three numbers are able to make a triangle

def triangle?((x1, y1), (x2, y2), (x3, y3))
  return false if (x1, y1) == (x2, y2) || (x1, y1) == (x3, y3) || (x2, y2) == (x3, y3)
  return false 
  true
end
