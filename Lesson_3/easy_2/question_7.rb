flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain

puts flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item