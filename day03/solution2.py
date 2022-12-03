def returnBadgetotal(sacks: str) -> int:
    total = sackIndex = 0
    sackList = sacks.split()

    while sackIndex < len(sackList):
        for c in sackList[sackIndex]:
            if c in sackList[sackIndex + 1] and c in sackList[sackIndex + 2]:
                if ord(c) >= 97:
                    total += (ord(c) - 96)
                else:
                    total += (ord(c) - 38)
                break

        sackIndex += 3

    return total