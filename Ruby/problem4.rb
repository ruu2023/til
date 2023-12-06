nums = (1..10)

n = 1
while n <= 10
  num = nums[n]
  if (num % 2 == 0) && (num % 3 == 0)
    puts "#{num}は2および3の倍数です"
  elsif num % 2 == 0
    puts "#{num}は2の倍数です。"
  elsif num % 3 == 0
    puts "#{num}は3の倍数です。"
  else
    puts "#{num}はどちらの倍数でもありません"
  end
  n = n + 1
end