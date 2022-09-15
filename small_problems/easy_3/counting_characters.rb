#Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please Give Us Words And We Will Count How Many Letters"
word = gets.chomp

def character (word)
  x = word.split(%r{\s*})
  return "There are #{x.count} characters in Your Word/Words"
end

p character(word)


print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."