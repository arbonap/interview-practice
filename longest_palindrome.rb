#find the length of the longest palindrome

def longest_palindrome(s)
    output = {}
    s.each_char do |char|
        if output.has_key? char
            output[char] += 1
        else
            output[char] = 1
        end
    end
    even_count = output.values.select{|num| num.even? }.reduce(&:+)
    if output.values.any?{|num| num.odd?}
      even_count.to_i + 1
    else
      even_count.to_i
    end
end

# p longest_palindrome('aabccddzBbbb')
