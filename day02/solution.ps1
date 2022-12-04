# A, X Rock
# B, Y Paper
# C, Z Scissors
$Score = 0

foreach ($match in $matches.split("`n")) {
    switch ($match[0]) {
        "A" {
            switch ($match[2]) {
                "X" {$Score += 1 + 3}
                "Y" {$score += 2 + 6}
                "Z" {$Score += 3 + 0}
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
                "X" {$Score += 1 + 6}
                "Y" {$score += 2 + 0}
                "Z" {$Score += 3 + 3}
            }
        }

        default {
            throw "Not a rock, paper or scissor: $match"
        }
    }
}

$Score