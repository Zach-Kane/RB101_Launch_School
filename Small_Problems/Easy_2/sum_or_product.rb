def product(number)
  (1..number).inject(:*)
end

# def product(number)
#   total_product = 1
#   array = [*2..number]
#   loop do
#     total_product *= array.shift
#     break if array.empty?
#   end
#   total_product
# end

def sum(number)
  (1..number).inject(:+)
end

# def sum(number)
#   total_sum = 1
#   array = [*2..number]
#   loop do
#     total_sum += array.shift
#     break if array.empty?
#   end
#   total_sum
# end

integer = ''
loop do
  puts "Please enter an integer greater than 0"
  integer = gets.chomp
  break if integer.to_i > 0 && integer.to_i.to_s == integer
  puts "Not a correct value"
end

action = ''
loop do
  puts "Please enter 'p' for the prodcut between 1 and the number" 
  puts "or 's' for the sum beteen 1 and the number"
  action = gets.chomp.downcase
  break if action == 'p' || action == 's'
  puts "Not a valid input."
end

result = case action
         when 'p'
           product(integer.to_i)
         when 's'
           sum(integer.to_i)
         end

message = case action
when 'p'
  'product'
when 's'
  'sum'
end


puts "The #{message} of numbers between 1 and #{integer} is #{result}"


# Launch School version

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end