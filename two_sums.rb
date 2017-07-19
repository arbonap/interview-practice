# See if two nums sum to the given target.
# If so, return those nums' indexes in a list

def two_sums(nums, target)
  a, b = nums.combination(2).detect { |x, y| x + y == target }
  [nums.index(a), nums.index(b)]

end

# p two_sums([2, 7, 11, 15], 9)
