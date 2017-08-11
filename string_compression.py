def string_compression(text):

  if len(text) <= 1:
    return text

  out = ""

  prev = text[0]

  count = 1

  for char in text[1:]:
    if char == prev:
      count += 1
    else:
        out += prev + str(count)
        prev = char
        count = 1

  last = prev + str(count)
  out += last

  if len(out) < len(text):
    return out
  return text

print string_compression('aaabbccc')
