# Find the first non‐repeating character in a string: ("DEFD" ‐> E)

def first_non_repeating_char(s)
  output = {}
  s.each_char do |char|
    if output.has_key?(char)
      output[char] += 1
    else
      output[char] = 1
    end
  end
  output.find do |key, value|
    return key if value == 1
  end
  output
end

puts first_non_repeating_char("DEFD")
