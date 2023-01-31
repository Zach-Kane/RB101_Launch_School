# every_other.rb

# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

# START

# GET an array of integers 


# Create new array with every other element of array of integers.

def every_other(array)
  new_array = []
  counter = 1
  loop do
  x = array.shift  
  new_array << x if counter.odd?
  counter += 1
  break if array.empty?
  end
  new_array
end

  

puts every_other([1,4,7,2,5]) # => [1,7,5]