a, b = map(int, input().split())
remainder = (a * b) % 2
if remainder == 0:
  print("Even")
else:
  print("Odd")