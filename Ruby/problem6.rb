n = 1
sum = 0
while n < 1001
  if (n % 7 == 0) && (n % 11 == 0)
    sum = sum + n
  elsif n % 7 == 0
    sum = sum + n
  elsif n % 11 == 0
    sum = sum + n
  end
  n = n + 1
end
puts sum