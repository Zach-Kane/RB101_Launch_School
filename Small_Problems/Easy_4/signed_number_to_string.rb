NUMS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(integer)
  num_string = integer.digits.map { |i| NUMS[i] }
  num_string.join.reverse
end

# def signed_integer_to_string(integer)
#   negative = integer.negative?
#   integer *= -1 if negative
#   number = integer.digits.map { |i| NUMS[i] }
#   num_string = number.join.reverse
#   return num_string if num_string == '0'
#   negative ? "-#{num_string}" : "+#{num_string}"
# end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
