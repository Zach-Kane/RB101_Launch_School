def swap(string)
  swap = string.split.map do |word|
    first = word.slice!(0)
    last = word.slice!(-1)
    "#{last}#{word}#{first}"
  end
  swap.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Launch School Version

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap2(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap2('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap2('Abcde') == 'ebcdA'
p swap2('a') == 'a'

