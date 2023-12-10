fib = [1]
n = 0
while n < 100
  fib << fib[n] + fib[n+1]
  n = n + 1
end

p fib

# fin[n+1]がnilのため計算できない
