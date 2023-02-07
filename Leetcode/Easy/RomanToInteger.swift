func romanToInt(_ s: String) -> Int {
    let dict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]

    var answer = 0

    let s = Array(s)

    var index = s.startIndex

    while index < s.endIndex {
        let current = dict[s[index]] ?? 0
        let next = index + 1 < s.endIndex ? dict[s[index + 1]]! : 0

        if current < next {
            answer += next - current
            index += 2
        } else {
            answer += current
            index += 1
        }
    }
    
    return answer
}

// print(romanToInt("MCMXCIV")) -- Output: 1994
