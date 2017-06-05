# def is_anagram_of_palindrome(exp)
#     adict = {}
#     for char in exp:
#         if char in adict:
#             adict[char] += 1
#         else:
#             adict[char] = 1
#     dict_values = adict.values()
#     odds = []
#     for val in dict_values:
#       if val % 2 != 0:
#         odds.append(val)
#     return len(odds) <= 1
# print is_anagram_of_palindrome('racecar')

def anagram_of_palindrome?(text)
  dict = {}

  text.each_char do |word|
    if dict.has_key? word
      dict[word] += 1
    else
      dict[word] = 1
    end
  end
puts dict
values = dict.values
output = []
values.map {|num| output.push(num) if num.odd?}
return output.length <= 1
end

puts anagram_of_palindrome("poop42")
