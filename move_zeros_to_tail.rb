def move_zeros_to_tail(ary)
  output = []
  ary.map do |num|
    if num == 0
      output.push(num)
    else
    output.unshift(num) #unshift is like PREPENDING!!!!
    end
  end
  output
end

print move_zeros_to_tail([0, 1, 0, 55, 0, 3])
