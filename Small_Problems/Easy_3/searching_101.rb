input = ''
numbers_array = []
6.times do |i|
  puts "Please enter number #{i +1}"
  input = gets.chomp.to_i
  numbers_array << input
end

number = numbers_array.pop

def number?(array,input)
  array.include?(input) ? "appears" : "does not appear"
end


puts "The number #{number} #{number?(numbers_array, number)} in #{numbers_array}."
