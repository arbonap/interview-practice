def balance_parens(txt)
  parens = 0
  txt.chars do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
  end
  parens == 0
end

puts balance_parens("(potatoes)")
puts balance_parens("())())))")


def balance_brackets(txt)
      # if len(expr) % 2 != 0: #checks if num of chars in string is even or not. if odd, fails fast
      #     return False
      # opening = "[{<("
      # match = [ ('(',')'), ('[',']'), ('{','}'), ('<', '>') ]
      # stack = []
      # for char in expr:
      #     if char in opening:
      #         stack.append(char)
      #     else:
      #         if len(stack)== 0:
      #             return False
      #         last_open_bracket = stack.pop()
      #         if (last_open_bracket, char) not in match:
      #             return False
      # return len(stack) == 0
  return false if txt.length.odd?

  opening = "({[<"
  match = [ ('(',')'), ('[',']'), ('{','}'), ('<', '>') ]
  stack = []

  txt.each_char do |char|
    if opening.include?(char)
      stack.push(char)
    else
      return false if stack.length == 0

      return false if !match.include?(stack.pop, char)
    end
  end
  stack.length == 0

end
print balanced_brackets("<>")
