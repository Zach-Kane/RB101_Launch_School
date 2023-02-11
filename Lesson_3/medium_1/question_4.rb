def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

a = ['one']
p rolling_buffer1(a, 3, "Buffer")

# b = ['two']
# puts rolling_buffer2(b, 3, 'buffer2')

# puts a

# puts b