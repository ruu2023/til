pnums = [2,3,5,7,11,13,17,21]
n = 24
a = 0
pnums.each do |pnum|
  if n % pnum == 0
    a = a + 1
  end
end
if a == 0
  puts "素数です。"
end