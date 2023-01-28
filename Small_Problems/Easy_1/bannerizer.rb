# bannerizer.rb

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')

puts "*** My Version *** \n"

def print_in_box(text)
  top_bottom = "+-#{"-" * text.length}-+"
  sides =  "|#{" " * text.length}  |"

  puts top_bottom
  puts sides
  puts "| #{text} |"
  puts sides
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')