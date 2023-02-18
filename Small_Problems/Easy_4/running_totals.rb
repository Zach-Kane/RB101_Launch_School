require 'pry'
def running_total(array)
  new_array = []
  counter = 0
  until array.empty?
    counter += array.shift
    new_array << counter
  end
  new_array
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# Launch School version

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# puts "Inject" not completeed 

# def running_total(array)
#   array.inject([], :+)
# end

# p running_total([2, 5, 13])# == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
# #puts running_total([3]) == [3]
# #puts running_total([]) == []


puts "each_with_object"

def running_total(array)
  total = 0
  array.each_with_object([]) { |i, a| a.push(total += i) }
end

p running_total([2, 5, 13])# == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
