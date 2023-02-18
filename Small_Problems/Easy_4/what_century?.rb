def century_suffix(century)
  suffix = century.to_s.slice(-2..-1)
  suffix2 = century.to_s.slice(-1)
  return 'th' if ["11", "12", "13"].include?(suffix)
  case suffix2
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end

def century(century)
  if century < 101
    "1st"
  else
    year = ((century - 1) + 100) / 100
    "#{year}#{century_suffix(year)}"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
