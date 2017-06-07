def moves(a)
  odds = []
  a.each do |num|
    if num.odd?
      odds << num
      a.delete(num)
    end
  end
array_two = a.push(odds).flatten

  a.select.each_with_index do |item, index|
    array_two[index] != item
  end
end

print moves([1, 2, 3, 4, 5, 6, 7])


# array_one = ["A", "B", "C"]
# array_two = ["A", "C", "A"]
