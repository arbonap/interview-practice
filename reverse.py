def reverse(text):
    lst = []
    for char in text:
        lst.insert(0, char)
    return "".join(lst)
print reverse('piglet')

def reverse_in_place(text):
    """Do not store the reversed string in an array or empty string.
     Use O(1) space and O(n) time. """
    string_list = list(text)

    left_pointer = 0
    right_pointer = len(string_list) - 1

    while left_pointer < right_pointer:

        #swap!
        #swap the first and last chars
        #then second and second to last chars
        #so on

        string_list[left_pointer] = string_list[right_pointer]
        string_list[right_pointer] = string_list[left_pointer]

        left_pointer += 1
        right_pointer -+ 1

    return "".join(string_list)
