"""
You are given a string .
Your task is to find out if the string  contains: alphanumeric characters, alphabetical characters, digits, lowercase and uppercase characters.
"""

def string_validator(string):
    digit = False
    alpha = False

    for char in string:
        if char.isdigit():
            digit = True
        if char.isalpha():
            alpha = True
        
