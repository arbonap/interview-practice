def pig_latin(text):
  """Create Pig Latin generator. If a word begins with a vowel, add '-ay' to the end of the word. If a word begins with a consonant, slice the first letter to the end and add '-ay' to the end of the string."""
  pyg = '-ay'
  text = text.lower()
  if len(text) > 0 and text.isalpha():
    if text[0] in 'aeiou':
      print text + pyg
    else:
      print text[1:] + text[0] + pyg
print pig_latin('potatoes')
print pig_latin('icecream')
