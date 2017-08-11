# 1.1 Is Unique: Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?

require 'set'
# use this method if you cannot use additinal data structures
def is_uniq?(txt)
  original_length = txt.chars.length
  without_dupes_length = txt.chars.uniq.length
  original_length == without_dupes_length
end

#this method takes advantage of a Set's unique values
def is_uniq_using_set?(txt)
  original_length = txt.chars.length
  set_length = Set.new(txt.chars).length
  original_length == set_length
end

#use a hash
def is_uniq_using_hash?(txt)
  output = {}
  txt.each_char do |char|
        if output.has_key? char
          output[char] += 1
        else
          output[char] = 1
        end
  end
  output.values.none? do |val|
    val > 1
  end
end
puts is_uniq_using_set?('bbbb')

puts is_uniq_using_hash?('patricia')

puts is_uniq_using_hash?('abc')
puts is_uniq_using_hash?('aaa')
