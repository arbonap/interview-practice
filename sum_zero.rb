def two_sum_zero(nums)
    nums.each do |num|
        num.each do |item|
          puts true if num + item == 0
    puts false
        end
    end
end

# puts two_sum_zero([1, -1])


def two_sum(nums)
  for num in nums
    for item in num
      puts true if num + item == 0
  puts false
    end
  end
end

puts two_sum([1, -1])
