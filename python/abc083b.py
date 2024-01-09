# 各桁を配列に格納する
# N = int(input())
# digits = []
# while N > 0:
#   digits.append( N % 10 )
#   N //= 10 #商を計算（少数切り捨て）

# print(digits)


def calc_sum_digits(n):
  sum_digit = 0
  while n > 0:
    sum_digit += n % 10
    n //= 10
  return sum_digit

print(calc_sum_digits(4649))