def factorial(n)
  return 1 if n < 1
  n * factorial(n - 1)
end

puts "factorial recursive:"
puts factorial(5)


def factorial_iterative(n)
  return 1 if n < 1
  puts (1..n).reduce(&:*)
end


def another_iterative_factorial(n)
  return 1 if n < 1
  list = []
  while n > 1
    list.push(n)
    n -= 1
  end
  puts list.reduce(&:*)
end
puts "iterative factorial:"
puts factorial_iterative(5)
puts another_iterative_factorial(5)
