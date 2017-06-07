 # Given an array of integers between 1 and 1,000,000.
 # One integer is in the array twice.
 # Find the duplicate.
 def find_duplicates(list)
   output = {}
   list.map do |num|
     if output.has_key?(num)
       output[num] += 1
     else
       output[num] = 1
     end
   end
   puts output

   duplicates = output.select do |key, value|
     key if value >= 2
   end
   puts duplicates.keys
 end


def another_duplicates(list)
  duplicates = list.select do |num|
    list.count(num) >= 2
  end
  duplicates.uniq
end

puts find_duplicates([1, 1, 3, 3, 3, 4, 5, 7, 88, 99, 20])
# puts another_duplicates([1, 1, 3, 3, 3, 4, 5, 7, 88, 99, 20])
