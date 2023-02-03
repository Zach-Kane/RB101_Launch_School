#!/usr/bin/env ruby
require "pry"
# not sure how to make this work without a name yet

puts "Please give us a name and we will give you an age"
name = gets.chomp

def name_age(name = 'Teddy')
  age = [*20..200].sample
  puts "#{name} is #{age}"
end
binding.pry

name_age(name)


# Launch School version

# age = rand(20..200)
# puts "Teddy is #{age} years old!"