func longestPalindrome(_ s: String) -> String {
    var low = 0
    var high = 0

    for i in 0..<s.count {
        for j in i..<s.count {
            let subString = s[s.index(s.startIndex, offsetBy: i)...s.index(s.startIndex, offsetBy: j)]
            
            if subString == String(subString.reversed()) && subString.count > high {
                high = subString.count
                low = i
            }
        }
    }

    let start = s.index(s.startIndex, offsetBy: low)
    let end = s.index(start, offsetBy: high)
    return String(s[start..<end])
}

print(longestPalindrome("cccbbbaaabbbdd"))