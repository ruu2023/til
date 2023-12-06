nums = (1..10)

nums.each do |num|
  if (num % 2 == 0) && (num % 3 == 0)
    puts "#{num}は2および3の倍数です"
  elsif num % 2 == 0
    puts "#{num}は2の倍数です。"
  elsif num % 3 == 0
    puts "#{num}は3の倍数です。"
  else
    puts "#{num}はどちらの倍数でもありません"
  end
end