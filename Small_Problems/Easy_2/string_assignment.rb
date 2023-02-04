name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Yes, I can explain the results. Both name and save_name are pointing to the same object
# in the first example and then name is reassigned to a new object. In the second example both # variables are pointing to the same object which is then mutated. 