def string_to_integer(string)
  num_array = string.codepoints.map { |code| code - 48 }
  num_array.inject { |sum, num| sum * 10 + num }
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('577702340') == 577702340
