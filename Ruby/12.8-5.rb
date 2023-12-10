fib = [1, 1]
n = 0
even_sum = 0
while n < 100 - 2
  fib << fib[n] + fib[n+1]
  n = n + 1
end
fib.each do |num|
  if num % 2 == 0
    even_sum = even_sum + num
  end
end
p even_sum