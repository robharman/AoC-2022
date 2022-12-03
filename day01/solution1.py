curcal = maxcal = 0

for i in input.splitlines():
    if i == '':
        curcal = 0
    else:
        curcal += int(i)
        if curcal > maxcal: maxcal = curcal

maxcal