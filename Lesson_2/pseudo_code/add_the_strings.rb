# add_the_strings.rb

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# START

# SET strings = an array of strings
strings = %w(these are strings in an array)
# SET new_string  = new string
new_string = ""

# FOR each string in array add to new string

strings.each do |i|
  new_string << i
end

puts new_string