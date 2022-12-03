def prioritizeSacks(sacks: str) -> int:
    total = 0
    priorities = []

    for sack in sacks.split():
        for i in sack[0:int((len(sack) / 2))]:
            if i in sack[(int((len(sack) / 2))):len(sack)]:
                if ord(i) >= 97:
                    priorities.append(ord(i) - 96)
                else:
                    priorities.append(ord(i) - 38)
                break

    return sum(priorities)