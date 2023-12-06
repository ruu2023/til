puts "数字を入力してください。"
n = gets.to_i
if n % 3 == 0
  puts "#{n}は3の倍数です。"
else
  puts "#{n}は3の倍数ではありません。"
end