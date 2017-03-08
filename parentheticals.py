def more_parentheticals(sentence, opening_paren_index):
""" Write a function that, given a sentence like the one above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis."""
  open_nested_params = 0
  position = opening_paren_index + 1

  while position <= len(sentence) - 1:
      char = sentence[position]

      if char == '(':
          open_nested_params += 1
      elif char == ')':
