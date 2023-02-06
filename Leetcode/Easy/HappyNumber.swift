func isHappy(_ n: Int) -> Bool {
    var nums = Set<Int>()
    var num = n

    while !nums.contains(num) {
        nums.insert(num)

        num = squareSum(num)
    }

    return num == 1
}

func squareSum(_ num: Int) -> Int {
    let digits = "\(num)".compactMap{ $0.wholeNumberValue }
        
    let squares = digits.map{ $0 * $0 }
        
    let sum = squares.reduce(0, +)

    return sum
}

// print(isHappy(2)) Output: false
// print(isHappy(19)) Output: true
