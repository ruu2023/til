# 各桁を配列に格納する
N = int(input())
digits = []
while N > 0:
  digits.append( N % 10 )
  N //= 10 #商を計算（少数切り捨て）

print(digits)
