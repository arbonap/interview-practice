# Print a single integer denoting the number of characters you must delete to make the two strings anagrams of each other.
#
# Sample Input
#
# cde
# abc
# Sample Output
#
# 4
# Explanation
#
# We delete the following characters from our two strings to turn them into anagrams of each other:
#
# Remove d and e from cde to get c.
# Remove a and b from abc to get c.
# We must delete  characters to make both strings anagrams, so we print  on a new line.

def making_anagrams(str1, str2)
  intersection = {}
  str1.each_char do |char|
    if str2.chars.include? char
      intersection[char] = 1
    end
  end
  total_length = str1.length + str2.length
  num_of_anagrams = intersection.values.map{ |num| num * 2}.reduce(&:+)
  total_length - num_of_anagrams
end

p making_anagrams("cde", "abc")
# returns 4
