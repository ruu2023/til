H, A = map(int, input().split())
if H % A == 0:
  print(H // A)
else:
  print(H // A + 1)

import sys
print(f"Pythonにおけるint型の最大値: {sys.maxsize}")