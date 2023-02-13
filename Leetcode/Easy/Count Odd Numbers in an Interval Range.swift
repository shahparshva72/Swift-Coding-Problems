func countOdds(_ low: Int, _ high: Int) -> Int {
    var counter = 0

    for i in low...high {
        if i % 2 != 0 {
            counter += 1
        }
    }

    return counter
}

print(countOdds(3, 7))