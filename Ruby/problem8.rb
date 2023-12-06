pnums = [2,3,5,7,11,13,17,21]
n = 24
while pnums.length < 102
  pnums.each do |pnum|
    if n % pnum == 0
      pnums << n
    end
    n = n + 1
  end
end
puts pnums[100]