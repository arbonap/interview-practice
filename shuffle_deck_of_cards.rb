# A standard deck of 52 cards is represented in an
# array. Each card is represented as an integer.
# Write a method to shuffle the cards.

def shuffle_deck
  (1..52).sort_by { rand }
end

print shuffle_deck


def another_shuffle_deck
  (1..52).sort{  rand <=> rand}
end

puts "method number 2"
print another_shuffle_deck
