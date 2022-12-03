curcal = 0
cals = []

for i in input.splitlines():
    if i == '':
        cals.append(curcal)
        curcal = 0
    else:
        curcal += int(i)

cals.sort()
sum(cals[-3:])