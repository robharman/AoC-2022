$overlaps = 0

foreach ($pairing in $AOC04.split()) {
    $firstRange = [float]$pairing.split(",")[0].split('-')[0]..[float]$pairing.split(",")[0].split('-')[1]
    $secondRange = [float]$pairing.split(",")[1].split('-')[0]..[float]$pairing.split(",")[1].split('-')[1]

    foreach ($i in $firstRange) {
        if ($secondRange -contains $i){
            $oneInTwo = $True
        }
    }

    foreach ($i in $secondRange) {
        if ($firstRange -contains $i){
            $twoInOne = $True
        }
    }

    if ($oneInTwo -or $twoInOne) {
        $overlaps++
    }
}