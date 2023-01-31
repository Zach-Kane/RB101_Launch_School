# stringy_strings.rb

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts "My Janky Method"

def stringy (number)
  array = %w(1 0 1 0 1 0 1 0 1 0 1 0 1)
  string = ""
  number.times do
    string << array.shift.to_s
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'