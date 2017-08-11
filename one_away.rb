# Write boolean method where you're given two strings
# and you're one edit away

def one_away(str1, str2)
  return true if str1 == str2 #fail fast
  return false if (str1.length - str2.length).abs > 1 #fail fast

  word1 = str1.split #turn strings into arrays
  word2 = str2.split

  index1 = 0 #each array needs its own index to manipulate
  index2 = 0
  edit_count = 0 #keep track of differences

  while index1 < word1.length
    if word1[index1] != word2[index2]
      edit_count += 1
      index2 += 1 if word1.length == word2.length
    else
      index2 += 1
    end
    index1 += 1

    if edit_count > 1
      return false
    end
  end
  true
end

puts one_away("patricia", "patriciaa")
