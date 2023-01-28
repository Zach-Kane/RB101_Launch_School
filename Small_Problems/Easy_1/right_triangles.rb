# right_triangles.rb

def triangle(num)
  star = "*"
  num.times do (num)
    puts "#{" " * num}#{star}"
    num -= 1
    star << "*"
  end
end

triangle(5)

triangle(9)

puts "Launch School Version"

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)

triangle(9)