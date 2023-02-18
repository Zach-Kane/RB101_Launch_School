def string_to_integer(string2)
  num_array = string2.codepoints.map { |i| i - 48 }
  num_array.inject { |sum, i| sum * 10 + i }
end

def string_to_signed_integer(string)
  sign = string.slice!(0) if string.start_with?('+', '-')
  string_sign = string_to_integer(string)
  string_sign *= -1 if sign == '-'
  string_sign
end

# First try

# def string_to_signed_integer(string)
#   if string.start_with?('-')
#     string = string.delete_prefix('-')
#     string_to_integer(string) * -1
#   elsif string.start_with?('+')
#     string = string.delete_prefix('+')
#     string_to_integer(string)
#   else
#     string_to_integer(string)
#   end
# end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# Refactored Launch School version. Basically mine. lol

def string_to_signed_integer(string)
  string_sign = string_to_integer(
    string.start_with?('+', '-') ? string[1..-1] : string
  )
  string_sign *= -1 if string.start_with?('-')
  string_sign
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100