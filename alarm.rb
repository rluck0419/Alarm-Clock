puts "please enter the alarm time (00:00)"
time = gets.chomp
time_arr = time.split(":")
hour, min = time_arr[0], time_arr[1]
puts "alarm is set for: #{hour}:#{min}"
date = Time.now
while Time.now < Time.mktime(date.year,date.month,date.day,hour,min,0)
  puts Time.now
  sleep(1)
  break if Time.now.eql?(Time.mktime(date.year,date.month,date.day,hour,min,0))
end
puts time = Time.now
`say "wake up!"`
`afplay ~/tiy/alarm_app/alarm_music.mp3`
