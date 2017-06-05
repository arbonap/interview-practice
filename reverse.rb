def reverse(txt)
  lst = []
  txt.each_char do |char|
    lst.unshift(char) #UNSHIFT IS LIKE PREPEND! or push for the front
  end
  lst.join
end

puts reverse("Rihanna")

# reverse in place
def reverse_in_place(txt)
  #swap!
  #swap the first and last chars
  #then second and second to last chars
  #so on
  string_list = txt.chars
  left_pointer = 0
  right_pointer = string_list.count - 1

  while left_pointer < right_pointer
    string_list[left_pointer] = string_list[right_pointer]
    string_list[right_pointer] = string_list[left_pointer]

    left_pointer += 1
    right_pointer -= 1
  end
  string_list.join
end

puts reverse_in_place("Beyonce")



# def reverse_in_place(text):
#     """Do not store the reversed string in an array or empty string.
#      Use O(1) space and O(n) time. """
#     string_list = list(text)
#
#     left_pointer = 0
#     right_pointer = len(string_list) - 1
#
#     while left_pointer < right_pointer:
#
#         #swap!
#         #swap the first and last chars
#         #then second and second to last chars
#         #so on
#
#         string_list[left_pointer] = string_list[right_pointer]
#         string_list[right_pointer] = string_list[left_pointer]
#
#         left_pointer += 1
#         right_pointer -+ 1
#
#     return "".join(string_list)
#
