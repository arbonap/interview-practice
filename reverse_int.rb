# reverse integer without using .reverse method
def reverse_int(num)
  output = []
  stringified = num.to_s
  stringified.each_char do |char|
    output.unshift(char)
  end
  output.join.to_i
end

puts reverse_int(123)
