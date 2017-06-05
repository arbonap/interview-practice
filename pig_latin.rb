def pig_latin(txt)
  #if word begins with vowel, add "-ay" to end
  #if word begins with consonant, slice first letter to end, and add "-ay"

  txt = txt.downcase
  if txt.include?("aeiou")
    txt + "-ay"
  else
    txt[1..-1] + txt[0] + "-ay"
  end

end

puts pig_latin("beyonce")
