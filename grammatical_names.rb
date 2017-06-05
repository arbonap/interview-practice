def grammatical_names(ary)
  last = ary.pop
  output = ary.join(", ") + ", and #{last}."
  output
end

puts grammatical_names(['Beyonce', 'Gaga', 'Nicki'])
