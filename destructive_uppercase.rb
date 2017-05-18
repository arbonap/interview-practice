# Return the argument with all its uppercase characters removed.

def destructive_uppercase(str)
  output = []
  str.chars.each do |char|
    if char == char.downcase
      output.push(char)
    end
    output.join
  end
end
puts destructive_uppercase("Patricia")
