def getMinimumDifference(a, b)
  output = []
  zipped = a.zip b

  zipped.each do |x, y|
  output.push(-1) && next if x.chars.length != y.chars.length
  difference = x.chars - y.chars
  output.push(difference.length)
  end
  return output
end

puts getMinimumDifference(["bib", 'a'], ["bob", 'zz'])
