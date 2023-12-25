import math

N = int(input())

x = math.ceil(N / 9)

y = N % 9

if y == 0:
  y = 9

ans = ""

for _ in range(0, x):
  ans += str(y)

print(ans)