
# In the modern era under the Gregorian Calendar, leap years 
# occur in every year that is evenly divisible by 4, unless 
# the year is also divisible by 100. If the year is evenly 
# divisible by 100, then it is not a leap year unless the year 
# is evenly divisible by 400.



# def leap(year)
#   if year % 400 == 0
#     puts " #{year} True"
#   elsif year % 100 == 0
#     puts " #{year} False"
#   else year % 4 == 0
#     puts "#{year} True"
#   end
# end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) #== true
p leap_year?(2015) #== false
p leap_year?(2100) #== false
p leap_year?(2400) #== true
p leap_year?(240000) #== true
p leap_year?(240001) #== false
leap_year?(2000) #== true
leap_year?(1900) #== false
leap_year?(1752) #== true
leap_year?(1700) #== false
leap_year?(1) #== false
leap_year?(100) #== false
leap_year?(400) #== true



# puts leap(2016)
# puts leap(2015)
# puts leap(2100)
# puts leap(2400)
# puts leap(240000)
# puts leap(240001)
# puts leap(2000)
# puts leap(1900)
# puts leap(1752)
# puts leap(1700)


 

