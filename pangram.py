import string
def is_pangram(strang):
    """Takes in a string, checks to
    see if every letter from the
    alphabet is used in said word.
    If so, returns True. Else returns false."""

    sorted_letters = sorted(strang.lower())
    return "".join(sorted_letters) == string.ascii_lowercase
print is_pangram('racecar')
