$overlaps = 0

foreach ($pairing in $AOC04.split()) {
    $oneInTwo = $True
    $twoInOne = $True

    $firstRange = [float]$pairing.split(",")[0].split('-')[0]..[float]$pairing.split(",")[0].split('-')[1]
    $secondRange = [float]$pairing.split(",")[1].split('-')[0]..[float]$pairing.split(",")[1].split('-')[1]

    foreach ($i in $firstRange) {
        if ($secondRange -notcontains $i){
            $oneInTwo = $false
        }
    }

    foreach ($i in $secondRange) {
        if ($firstRange -notcontains $i){
            $twoInOne = $false
        }
    }

    if ($oneInTwo -or $twoInOne) {
        $overlaps++
    }
}