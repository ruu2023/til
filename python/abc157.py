# ビンゴカード配列A
A = []

# 3行分の配列を受け取る
for _ in range(0, 3):
  # ビンゴカードの1行を受け取る
  row = list(map(int, input().split()))

  # 受け取った1行分の配列をAの末尾に追加する
  A.append(row)

# 印付け配列M
M = []
for i in range(0, 3):
  # 1行分を表す1次元配列
  row = []
  for j in range(0, 3):
    row.append(False)
  M.append(row)


N = int(input())

# 選ばれた数字がビンゴカードにあるか確認する
for _ in range(0, N):

  # 選ばれた数字
  b = int(input())

  # bがビンゴカードに書かれているか調べる
  for i in range(0, 3):
    for j in range(0, 3):
      if A[i][j] == b:
        M[i][j] == True


# ビンゴを達成しているかどうかを記録する変数
bingo = False

for i in range(0, 3):
  # i行目の3つにしるしがついているか確認する
  if M[i][0] and M[i][1] and M[i][2]:
    bingo = True

for i in range(0, 3):
  # i列目の3つにしるしが就いているか確認する
  if M[0][i] and M[1][i] and M[2][i]:
    bingo = True

# 左上から右下にかけて、斜めに3つしるしがついている
if M[0][0] and M[1][1] and M[2][2]:
  bingo = True

# 右上から左下にかけて、斜めに3つしるしがついている
if M[0][2] and M[1][1] and M[2][0]:
  bingo = True

if bingo:
  print("Yes")
else:
  print("No")