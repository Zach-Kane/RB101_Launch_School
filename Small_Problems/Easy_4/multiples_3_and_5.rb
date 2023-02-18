def multisum(number)
  total = 0
  number = [*1..number]
  new_array = []
  loop do
    x = number.shift
    if x % 3 == 0
      new_array << x
    elsif x % 5 == 0
      new_array << x
    end
    break if number.empty?
  end
  loop do
    total += new_array.shift
    break if new_array.empty?
  end
  total
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

def multisum(number)
  array = []
  number = [*1..number]
  until number.empty?
    x = number.shift
    array << x if x % 3 == 0 || x % 5 == 0
  end
  array.inject(:+)
end

puts multisum(3) # == 3
puts multisum(5) #== 8
puts multisum(10) #== 33
puts multisum(1000) #== 234168
