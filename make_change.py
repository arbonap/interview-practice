def change_possibilities_top_down(amount_left, denominations, current_index=0):

# base cases:
# we hit the amount spot on. yes!
  if amount_left == 0: return 1

# we overshot the amount left (used too many coins)
  if amount_left < 0: return 0

# we're out of denominations
  if current_index == len(denominations): return 0

  print "checking ways to make %i with %s" % (amount_left, denominations[current_index:])

# choose a current coin
  current_coin = denominations[current_index]

# see how many possibilities we can get
# for each number of times to use current_coin
  num_possibilities = 0
  while amount_left >= 0:
    num_possibilities += change_possibilities_top_down(amount_left, denominations, current_index + 1)
    amount_left -= current_coin

  return num_possibilities

print change_possibilities_top_down(6, [25, 10, 5, 1], current_index=0)
