def count_substring(string, sub_string):
    """ Output the integer number indicating the total number of occurrences of the substring in the original string. """
    count = 0
    for i in range(len(string)-len(sub_string)+1):
        if (string[i:i+len(sub_string)] == sub_string):
            count += 1
    return count

print count_substring("raceracecar", "race")
