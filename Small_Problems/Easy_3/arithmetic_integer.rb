def number?(number)
  number.to_i.to_s == number
end


num1 = ''
loop do
  puts "==> Enter the first number:"
  num1 = gets.chomp
  break if number?(num1)
  puts "Not a valid number"
end

num2 = ''
loop do
  puts "==> Enter the second number:"
  num2 = gets.chomp
  break if number?(num2)
  puts "Not a valid number"
end

operators = [:+, :-, :*, :/, :%, :**]

loop do
  operator = operators.shift
  puts "#{num1} #{operator} #{num2} = #{num1.to_i.send(operator, num2.to_i)}"
  break if operators.empty?
end

# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103