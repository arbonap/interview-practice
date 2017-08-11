#Implement a method to perform basic string compression
#usign the counts of repeated characters.
# For example, the string 'aabcccccaaa' would
#become 'a2b1c5a3'. If the "compressed" string
# would not become smaller than the original string, your
# method should return the original string.
#Assume string has only uppercase and lowercase letters (a-z).

def string_compression(txt)
  output = {}

  txt.each_char do |char|
    if output.include? char
      output[char] += 1
    else
      output[char] = 1
    end
  end

  string_keys = output.keys
  string_values = output.values

  compressed = string_keys.zip(string_values).flatten.join

  if compressed.length > txt.length
    return txt
  else
    return compressed
  end
end


puts string_compression("aabcccccaa") #should return a4b1c5

puts string_compression("abcdefghijklmno") #should return abcdefghijklmno
