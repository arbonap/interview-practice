require 'pry'
def vowels(list)
  output = Hash.new([])

  list.select{|word| word.include?('a')}.map do |x|
    output['a'] <<= x unless output['a'].include?(x)
    binding.pry
  end

  list.select{|word| word.include?('e')}.map do |word|
    output['e'] <<= word unless output['e'].include?(word)
  end

  list.select{|word| word.include?('i')}.map do |word|
    output['i'] <<= word if !output['i'].include?(word)
  end

  list.select{|word| word.include?('o')}.map do |word|
    binding.pry;
    output['o'] <<= word if !output['o'].include?(word)
  end

  list.select{|word| word.include?('u')}.map do |word|
    output['u'] <<= word if !output['u'].include?(word)
  end
output
end

puts vowels(['apple', 'berry', 'cherry'])
