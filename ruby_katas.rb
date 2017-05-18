# Define a method that capitalizes each word of its argument and returns the resulting string.
def capitalize_each_word(str)
  list = str.split
  output = []
  list.map{|word| output << (word[0].upcase + word[1..-1] )}
  output.join(" ")
end
puts capitalize_each_word("hello there")

# Define a method that takes an array of integers and returns an array of the square of each.
# compute_squares([1, 2, 3, 4]) => [1, 4, 9, 16]
# compute_squares([]) => []
def compute_squares(arr)
  squares = []
  arr.map do |num|
    squares.push(num ** 2)
  end
  print squares.flatten
end
puts "array of squares:"
puts compute_squares([1, 2, 3, 4])
# Define a method that returns a boolean indicating whether any two elements in the argument array sum to 0.
# two_sum_to_zero?([4, 2, 6]) => false
# two_sum_to_zero?([-2, 5, 12, -3, 2]) => true
def two_sum_to_zero?(arr)
  output = []
  for x in arr
    for y in arr
      if x + y == 0
        output.push("true")
      else
        output.push("false")
      end
    end
  end
  output.any?{ |boolean| boolean.include? "true"}
end
# print two_sum_to_zero?([4, -4, 0])
# puts output
puts "two_sum_to_zero?:"
puts two_sum_to_zero?([4, 5, 6])
puts two_sum_to_zero?([-4, 5, 4])
# Define a method that returns the longest word in its argument.
def longest_word(str)
  list = str.split
  previous_word = ''
  max_word = ''
  list.each do |word|
    max_word = word if previous_word.length < word.length
    previous_word = word
  end
  max_word
end
puts "longest_word without .max"
puts longest_word("hello there my name is Patricia")


# ----------

# EASY

# Return the argument with all its uppercase characters removed.

def destructive_uppercase(str)
  output = []
  str.each_char do |char|
    if char == char.downcase
      output << char
    end
  end
  p output.join
end
puts "destructive_uppercase:"
puts destructive_uppercase("Patricia")

# Return the middle character of a string.
# Return the middle two characters if the word
# is of even length, e.g. middle_substring("middle") => "dd", middle_substring("mid") => "i"
def middle_substring(str)
  string_length = str.length
  if string_length.even?
   puts str[(string_length / 2) - 1..(string_length / 2)]
  else
   puts str[string_length / 2]
  end
end
puts "middle_substring of odd word:"
puts middle_substring("cat")
puts "middle_substring of even word:"
puts middle_substring("papa")

# Return the number of vowels in a string.
def num_vowels(str)
  puts str.count("aeiou")
end
puts "vowel counts:"
num_vowels("potatoes")
#
# # Return the factoral of the argument (num!). A number's factorial is the product of all whole numbers between 1 and the number itself. Assume the argument will be > 0.
def factorial(num)
  puts (1..num).reduce(&:*)
end
puts factorial(5)
#
#
# # MEDIUM
#
# # Write your own version of the join method. separator="" ensures that the default argument is "".
# def my_join(arr, separator="")
#
# end
#
# # Write a method that converts its argument to weirdcase, where every odd character is lowercase and every even is uppercase, e.g. weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  output = []
  str.each_char do |char|
    if str.index(char).even?
      output.push(char.downcase)
    else
      output.push(char.upcase)
    end
  end
  output.join
end
puts "weirdcase:"
puts weirdcase("ruby rocks")
#
# # Reverse all words of five more more letters in a string.
# Return the resulting string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like my luck has desrever").
def reverse_five(str)
  list = str.split
  output = []
  list.each do |word|
    if word.length > 5
      output.push(word.reverse)
    else
      output.push(word)
    end
  end
  puts output.join(" ")
end

puts reverse_five("hello00 my name is bob")
#
# # Return an array of integers from 1 to 30 (inclusive), except for each multiple of 3 replace the integer with "fizz", for each multiple of 5 replace the integer with "buzz", and for each multiple of both 3 and 5, replace the integer with "fizzbuzz".
def fizzbuzz
  (1..30).each do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

puts fizzbuzz
#
#
# # HARD
#
# # Write a method that returns a new array containing all the elements of the original array in reverse order.
def my_reverse(arr)
  output = []
  arr.map do |item|
    output.unshift(item)
  end
  print output
end
puts "a reverse method;"
puts my_reverse([1, 2, 3])
#
# Write a method that returns a boolean indicating whether the argument is prime.
def prime?(num)
  return false if num < 2

  for i in (2...num)
    return false if num % i == 0
  end
  true
end

puts "is number a prime number?"
puts prime?(7)

# def another_prime?(num)
#   return false if num < 2
#   (2..num).select{ |i| num % i == 0 }
# end
# puts "another prime: "
# puts another_prime?(7)
#
#
# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  output = []
  (1..num).map do |i|
    output.push(i) if num % i == 0
  end
  puts output
end

puts "factors: "
puts factors(6)

def divisors_of(num)
   (1..num).select { |n|num % n == 0}
end

 print divisors_of(6)
#
# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  factors = divisors_of(num)
  output = []
  factors.map {|i| output.push(i) if prime?(i) == true }

  output.sort
end
puts "prime factors:"
puts prime_factors(49)
puts prime_factors(91)
#
# # Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end

puts "number of prime factors"
puts num_prime_factors(91)
#
#
# # EXPERT
#
# # Return the one integer in an array that is even or odd while the rest are of opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)

  odd_count = arr.select{|num| num.odd? }.reduce(&:+)
  even_count = arr.select{|num| num.even? }.reduce(&:+)

  if odd_count > even_count
    arr.select{|num| num.even? }
  elsif even_count > odd_count
   arr.select{|num| num.odd?}
  else
   puts "nope, not correct number of ints in array"
  end
end
puts "oddball: "
puts oddball([1, 2, 3])
#
#
def capitalize_each_word(str)

  output = []
  list = str.split
  list.map do |word|
    output.push(word.capitalize)
  end
  output.join(" ")
end
puts "capitalize each word:"
puts capitalize_each_word("hello there my name is patricia")
#
# # Define a method that takes an array of integers and returns an array of the square of each.
# # compute_squares([1, 2, 3, 4]) => [1, 4, 9, 16]
# # compute_squares([]) => []

def compute_squares(arr)
  output = []
  arr.map do |num|
    output.push(num ** 2)
  end
  output
end

puts compute_squares([1, 2, 3, 4])
#
# # Define a method that returns a boolean indicating whether any two elements in the argument array sum to 0.
# # two_sum_to_zero?([4, 2, 6]) => false
# # two_sum_to_zero?([-2, 5, 12, -3, 2]) => true
# def two_sum_to_zero?(arr)
#
# end
# # Define a method that returns the longest word in its argument.
def longest_word(str)
  longest_word = ''
  puts longest_word
  str.split.each do |word|
    longest_word = word
    longest_word = word if word.length > longest_word.length
  end
  puts longest_word
end

puts "longest_word"
puts longest_word("cheetos are delicious and amazing")
#
#
# #--------
#
#
# # Define a method that reverses the digits of its argument and returns the resulting number.
# # reverse_digits(1738) => 8371
# def reverse_digits(int)
#
# end
#
# # Define a method, #pair_product?, that accepts two arguments: an array of integers and a target_product (an integer). The method returns a boolean indicating whether any pair of elements in the array multiplied together equals that product. You cannot multiply an element by itself. An element on its own is not a product.
# # pair_product?([3, 1, 5], 15) => true
# def pair_product?(arr, target_product)
#
# end
#
# # Define a method, #slice_between_vowels(word), that accepts a string as an argument. Your method should return the slice of the word between the first and last vowels of that word. Return an empty string if the word has less than 2 vowels.
# # slice_between_vowels("serendipity") => "rendip"
# # slice_between_vowels("train") => ""
# # slice_between_vowels("dog") => ""
# def slice_between_vowels(word)
#
# end
#
# #---------
#
# # A "slippery number" has 3 as a factor or has 5 as a factor, but not both. 6 is a slippery, but 30 is not. Define a method that returns a boolean indicating whether its argument is slippery.
# def is_slippery?(n)
#
# end
#
# # Write a method that, given an integer n, returns an array of the first n slippery numbers.
# # slippery_numbers(7) => [3, 5, 6, 9, 10, 12, 18]
# def slippery_numbers(n)
#
# end
#
#
# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0 + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third, yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)
  return 1 if n == 1
  return 2 if n == 2
  fibs(n - 1) + fibs(n - 2)
end
puts "fibonacci:"
puts fibs(5)

def hashie(str)
  list = str.chars
  dict = {}
  list.each do |word|
    if dict.has_key? word
      dict[word] += 1
    else
      dict[word] = 1
    end
  end
  puts dict
end
puts hashie('potatoes')

def iterative_fibonacci(num)

end
