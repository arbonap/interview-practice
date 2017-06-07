# * Write a function to return all
# permutations or combinations of any given iterable
# (for example, a string)
def all_perms(txt)
  output = []
  txt.length.times do |i|
    last = txt.chars.pop
    output.push(txt.chars.unshift(last))
  end
  output
end

p all_perms("Patricia")
