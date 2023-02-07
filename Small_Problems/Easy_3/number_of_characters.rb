# Not sure why my goto is converting everything to an array. lol

puts "Please enter a word or words to find the number of characters."
word = gets.chomp

word_array = word.split('')

word_array.delete_if { |i| i == " " }

puts "There are #{word_array.length} charaters in #{word}"

# Launch School version

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."