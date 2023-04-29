def after_midnight(time)
  hour = time[0,2].to_i
  minute = time[3,2].to_i
  minutes = (hour * 60) + minute
  minutes > 1439 ? 0 : minutes
end

def before_midnight(time)
  hour = time[0,2].to_i
  minute = time[3,2].to_i
  minutes = (hour * 60) + minute
  minutes = 1440 - minutes
  minutes > 1439 ? 0 : minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0