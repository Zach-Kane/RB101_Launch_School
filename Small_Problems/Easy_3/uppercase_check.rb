def uppercase?(word)
  word = word.delete(' ')
  word.length == word.count('A-Z')
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true