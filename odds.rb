def remove_odds(arr)
  arr.select{|num| num.even?}
end
puts remove_odds([1, 2, 3, 4, 5, 6])
