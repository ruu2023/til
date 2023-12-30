N = int(input())

# for i in range(N)のとき
# 0~N-1まで繰り返される

for n in range(1, N + 1):
  if n % 3 == 0 and n % 5 == 0:
    print("Fizz Buzz")
  elif n % 3 == 0:
    print("Fizz")
  elif n % 5 == 0:
    print("Buzz")
  else:
    print(n)
