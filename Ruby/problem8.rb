pnums = [2,3,5,7,11,13,17,21]
n = 24
while pnums.length < 102
  is_prime = true
  pnums.each do |pnum|
    if n % pnum == 0
      is_prime = false
      break
    end
  end

  pnums << n if is_prime
  n += 1
end

puts pnums[100] 