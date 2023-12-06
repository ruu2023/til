n = 15

if (n % 5 == 0) && (n % 7 == 0)
  puts "nは5および7の倍数です"
elsif n % 5 == 0
  puts "nは3の倍数です。"
elsif n % 7 == 0
  puts "nは5の倍数です。"
else
  puts "nはどちらの倍数でもありません"
end