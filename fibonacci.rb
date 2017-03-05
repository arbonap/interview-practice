def recursive_fibonacci(num)
  return 1 if num == 1
  return 2 if num == 2
  recursive_fibonacci(num - 1) + recursive_fibonacci(num - 2)
end

puts recursive_fibonacci(5)


def iterative_fibonacci(num)
  a = 0
  b = 1
  num.times do
    a = b #inch forward
    b = b + a #inch again
  end
end

puts iterative_fibonacci(4)
