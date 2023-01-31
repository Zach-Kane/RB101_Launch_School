# reverse_digits.rb
require "pry"

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  puts reversed_string.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1


puts "*** My rather long method ***"
# I should have tested conversions first before writing this lengthy piece of code. But I learned a lot here. 

def reversed_number(number)
  x = number.to_s.reverse!
  array = x.split("")
  loop do
    if array[0] == "0"
      array.shift
    end
    break if array[0] != "0"
  end
  #binding.pry
  reverse = ""
  loop do
    reverse << array.shift
    break if array.empty?
  end
  puts reverse
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1