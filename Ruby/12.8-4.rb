fib = [1, 1]
n = 0
while n < 100 - 2
  fib << fib[n] + fib[n+1]
  n = n + 1
end
p fib