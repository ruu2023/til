S = input()
na = 0
nb = 0
nc = 0
# for x in S:
#   if x == "a":
#     na += 1
#   elif x == "b":
#     nb += 1
#   elif x == "c":
#     nc += 1
na = S.count("a")
nb = S.count("b")
nc = S.count("c")

# if na > nb and na > nc:
#   print("a")
# elif nb > na and nb > nc:
#   print("b")
# elif nc > na and nc > nb:
#   print("c")
mx = max(na,nb,nc)
if na == mx:
  print("a")
elif nb == mx:
  print("b")
elif nc == mx:
  print("c")