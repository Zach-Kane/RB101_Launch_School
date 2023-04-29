def cleanup(string)
  string = string.gsub(/[^a-z]/, "*")
  string = string.split('*')
  string.delete("")
  ' ' + string.join(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '
