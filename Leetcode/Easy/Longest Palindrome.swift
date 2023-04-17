// https://leetcode.com/problems/longest-palindrome/?envType=study-plan&id=level-1

func longestPalindrome(_ s: String) -> Int {
    var freqDict: [Character: Int] = [:]
    var length = 0

    var isOdd = false

    for c in s {
        freqDict[c, default: 0] += 1
    }

    for (_, v) in freqDict {
        if v % 2 == 0 {
            length += v
        } else {
            length += (v - 1)
            isOdd = true
        }
    }

    if isOdd == true {
        length += 1
    }

    return length
}