def returnBadgetotal(sacks: str) -> int:
    sackIndex = 0
    sackList = sacks.split()
    priorities = []

    while sackIndex < len(sackList):
        for c in sackList[sackIndex]:
            if c in sackList[sackIndex + 1] and c in sackList[sackIndex + 2]:
                if ord(c) >= 97:
                    priorities.append(ord(c) - 96)
                else:
                    priorities.append(ord(c) - 38)
                break

        sackIndex += 3

    return sum(priorities)