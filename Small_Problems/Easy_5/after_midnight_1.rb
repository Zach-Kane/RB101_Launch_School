def time_of_day(minutes)
  minutes = minutes % 1440
  hours = minutes / 60
  min = minutes % 60
  "#{format('%02d', hours.to_s)}:#{format('%02d', min.to_s)}"
end

# def time_of_day(time)
#   hour, minute = time.divmod(60)
#   hour = hour % 24 if hour > 24
#   hour = hour % -24 if hour < -24
#   hour = 24 + hour if time.negative?
#   "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
# end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800)  == "13:20"
puts time_of_day(-4231) == "01:29"
