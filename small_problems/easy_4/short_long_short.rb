
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.


puts "String One"
s1 = gets.chomp

puts "String Two"
s2 = gets.chomp

def add_strings (a,b)
  if a.length > b.length
    puts a+b+a
  else
    puts b+a+b
  end
end

add_strings(s1,s2)


