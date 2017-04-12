def count_substring(string, sub_string):
    for i in range(len(string)):
        count = 0
        if string[sub_string] in string:
            count += 1
    return count
