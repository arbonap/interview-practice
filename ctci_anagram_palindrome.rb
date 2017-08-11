def anagram_palindrome(txt)
  output = {}
  txt.each_char do |char|
    if output.has_key? char
      output[char] += 1
    else
      output[char] = 1
    end
  end
  output.select{|key, value| value.odd? }.length <= 1
end

puts anagram_palindrome("patricia")
puts anagram_palindrome("bob")
