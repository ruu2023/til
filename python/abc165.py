# Kを入力
K = int(input())

# A B への入力（A, B は Kと別の行で入力される）
A, B = map(int, input().split())

# フラグ：調べた範囲にKの倍数があったかどうか
exist = False

# i = A, A+1, ..., Bを調べる
for i in range(A, B + 1):
  # K の倍数が見つかったらフラグをオンにする
  if i % K == 0:
    exist = True

# 出力
print("OK" if exist else "NG")