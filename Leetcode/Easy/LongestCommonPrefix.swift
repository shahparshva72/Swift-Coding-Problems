func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 { return "" }
    if strs.count == 1 { return strs[0] }

    var answer = strs[0]

    for str in strs {
        while !str.hasPrefix(answer) {
            answer.removeLast()
        }
    }

    return answer
}

// print(longestCommonPrefix(["flower","flow","flight"])) -- Output: fl
