# repeat_yourself.rb

def repeat (word, times)
  times.times do
    puts word
  end
end

repeat('Hello', 3)



def repeat (word, times)
  puts ("#{word} \n") * times
end

repeat('Hello', 3)