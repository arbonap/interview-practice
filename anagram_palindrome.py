def is_anagram_of_palindrome(exp):
    """ Is the word of an anagram of a palindrome?"""
    adict = {}
    for char in exp:
        if char in adict:
            adict[char] += 1
        else:
            adict[char] = 1
    dict_values = adict.values()
    odds = []
    for val in dict_values:
      if val % 2 != 0:
        odds.append(val)
    return len(odds) <= 1
print is_anagram_of_palindrome('racecar')


def anagram_of_palindrome(exp):
    """Use a set."""
    anagram_set = set()
    for char in exp:
        if char in anagram_set:
            anagram_set.remove(char)
        else:
            anagram_set.add(char)
    return len(anagram_set) < 2
    #if length of anagram set is greater than two, the word is not a palindrome.
    #if length of anagram set is 1, it was an odd-length word
    #if length of anagram set is 0, it was an even-length word!
print anagram_of_palindrome('red')
print anagram_of_palindrome('tacocat')
