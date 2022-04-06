class SumTime
  def self.sum_time(time, k)
    hour, minute = time.split(':').map(&:to_i)

    add_minutes = minute + k
    hour += add_minutes / 60
    minute = add_minutes % 60
 
    "#{hour}:#{minute}"
  end
end

time = "21:39"

k = 43

puts "Time before #{time}"
puts SumTime.sum_time(time, k)