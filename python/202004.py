N = int(input())
S = []

for i in range(0, N):
  si = input()
  si = list(si)
  S.append(si)

print(S[0])

# for i in range(0, N-1):
for i in range(N-2, -1, -1):
  for j in range(1, 2*N-1):
    if S[i][j] == '#':
      if S[i+1][j-1] == 'X':
        S[i][j] = 'X'
      if S[i+1][j] == 'X':
        S[i][j] = 'X'
      if S[i+1][j+1] == 'X':
        S[i][j] = 'X'
  
for i in range(0, N):
  S[i] = ''.join(S[i])
  print(S[i])
