# A Rock        1
# B Paper       2
# C Scissors    3
# X Lose
# Y Draw
# Z Win
$Score = 0

foreach ($match in $matches.split("`n")) {
    switch ($match[0]) {
        "A" {
            switch ($match[2]) {
                "X" {$Score += 3 + 0}
                "Y" {$score += 1 + 3}
                "Z" {$Score += 2 + 6}
            }
        }
        "B" {
            switch ($match[2]) {
                "X" {$Score += 1 + 0}
                "Y" {$score += 2 + 3}
                "Z" {$Score += 3 + 6}
            }
        }
        "C" {
            switch ($match[2]) {
                "X" {$Score += 2 + 0}
                "Y" {$score += 3 + 3}
                "Z" {$Score += 1 + 6}
            }
        }

        default {
            throw "Not a rock, paper or scissor: $match"
        }
    }
}

$Score