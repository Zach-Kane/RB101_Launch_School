def palindrome?(input)
  input == input.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?('madam'.split('')) == true
p palindrome?('Madam'.split('')) == false          # (case matters)
p palindrome?("madam i'm adam".split('')) == false # (all characters matter)
p palindrome?('356653'.split('')) == true

