def prioritizeSacks(sacks: str) -> int:
    total = 0

    for sack in sacks.split():
        for i in sack[0:(len(sack) // 2)]:
            if i in sack[((len(sack) // 2)):]:
                if ord(i) >= 97:
                    total += (ord(i) - 96)
                else:
                    total += (ord(i) - 38)
                break

    return total