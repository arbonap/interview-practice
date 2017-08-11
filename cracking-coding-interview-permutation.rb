def permutation?(txt1, txt2)
  output1 = {}
  txt1.each_char do |char|
    if output1.has_key? char
      output1[char] += 1
    else
      output1[char] = 1
    end
  end

  output2 = {}
  txt2.each_char do |char|
    if output2.has_key? char
      output2[char] += 1
    else
      output2[char] = 1
    end
  end
  output1 == output2
end

puts permutation?('aba', 'baa')
