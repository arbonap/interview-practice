def recursive_flatten(array, results = [])
  array.each do |element|
    if element.class == Array
      recursive_flatten(element, results)
    else
      results << element
    end
  end
  results
end
