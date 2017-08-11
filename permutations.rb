def permutations(txt, i=0)
  return p txt if i == txt.size
  (i...txt.size).each do |j|
    txt[i], txt[j] = txt[j], txt[i]
    permutations(txt, i+1)
    txt[i], txt[j] = txt[j], txt[i]
  end
end

p permutations("abba")
