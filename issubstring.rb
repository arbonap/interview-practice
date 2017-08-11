# Assume you have a method is_substring which checks if one word is a substring of another.
# Given two strings, write code to check if string2
# is a rotation fo string1 using only one call
# to is_substring
# (e.g., "waterbottle" is a rotation of "erbottlewat")

def is_substring(str1, str2)
    str1.concat(str1).include? str2
end

puts is_substring("waterbottle", "erbottlewat")

puts is_substring("potatoes", "patricia")


def is_substring?(str1, str2)
    double = str1 << str1
    double.include? str2
end

puts is_substring?("waterbottle", "erbottlewat")

puts is_substring?("xx", "yy")
