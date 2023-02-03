puts 'version 1'

[*1..99].each do |i|
  puts i if i.odd?
end

puts 'version 2'

1.upto(99) {|i| puts i if i.odd?}

puts 'version 3'

array = [*1..99].select {|i| i.odd?}
puts array


puts 'Launch School version'

value = 1
while value <= 99
  puts value
  value += 2
end