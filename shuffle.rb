def my_shuffle(ary)
  list = []

  list.push(ary.shift(rand(0...ary.length)))
  list
end

p my_shuffle([4, 5, 7, 22, 88, 64, 2])
