# middle_character.rb

def center_of(string)
  half_length = string.length / 2
  if string.length.odd?
    puts string[half_length]
  else
    puts string[half_length -1, 2]
  end
end



center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# Launch School version

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end