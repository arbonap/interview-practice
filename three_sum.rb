def three_sum(nums)
    a = nums.combination(3).select { |x, y, z| x + y + z == 0 }
    b = a.map do |list|
      list.sort
    end
    b.uniq
end

# p three_sum([-1, 0, 1, 5, -5, 0])
