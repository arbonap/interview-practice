def recursive_fibonacci(num)
  return 1 if num == 1
  return 2 if num == 2
  recursive_fibonacci(num - 1) + recursive_fibonacci(num - 2)
end

puts recursive_fibonacci(5)

def recursive_fibonacci(num)
  return 1 if num == 1
  return 2 if num == 2
  recursive_fibonacci(num - 1) + recursive_fibonacci(num - 2)
end


def iterative_fibonacci(num)
  a = 0
  b = 1
  num.times do
    a = b #inch forward
    b = b + a #inch again
  end
end

puts iterative_fibonacci(4)

class Fibber
    def initialize
        @memo = {}
    end

    def fib(n)

        # edge case: negative index
        if n < 0
            raise Exception, "Index was negative. No such thing as a negative index in a series."

        # base case: 0 or 1
        elsif n == 0 || n == 1
            return n
        end

        # see if we've already calculated this
        if @memo.include? n
            return @memo[n]
        end

        result = self.fib(n-1) + self.fib(n-2)

        # memoize
        @memo[n] = result

        return result
    end
end
