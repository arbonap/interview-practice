def make_change(amount, coins = [25,21,10,5,1])
  coins.sort.reverse.map{
                      |coin|
                      f = amount/coin;
                      amount %= coin;
                      Array.new(f){coin} }.flatten
end

# puts make_change(23)
puts make_change(63)
# puts make_change(13, [7,4,3,1])
