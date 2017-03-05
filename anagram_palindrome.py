
def anagram_of_palindrome(exp):
    anagram_set = set()
    for char in exp:
        if char in anagram_set:
            anagram_set.remove(char)
        else:
            anagram_set.add(char)
    return len(anagram_set) < 2

print anagram_of_palindrome('red')
print anagram_of_palindrome('tacocat')
