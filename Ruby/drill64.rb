# 現在時刻
now = Time.new

weekdays = ["日", "月", "火", "水", "木", "金", "土"]
year = now.year
month = now.month
day = now.day

puts "現在は西暦#{year}年#{month}月#{day}日"
puts "#{weekdays[now.wday]}曜日です"
