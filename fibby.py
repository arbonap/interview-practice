def recursive_fibbonacci(num):
    if num in [0, 1]:
        return num
    else:
        return recursive_fibbonacci(num - 1) + recursive_fibbonacci(num - 2)
print recursive_fibbonacci(3)


def iterative_fibonacci(n):
    a = 0
    b = 1
    for i in range(n):
        prev_a = a
        a = b
        b = prev_a + b
        #print b
    return a
print iterative_fibonacci(3)

def another_iterative_fibonacci(num):
  a = 0
  b = 1
  for i in range(num):
      prev_a = a
      a = b
      b = prev_a + b
  return a



def fib(n):
   fib_values = [0, 1]
   for i in range(2, n + 1):
      fib_values.append(fib_values[i - 1] + fib_values[i - 2])
   return fib_values[n]
