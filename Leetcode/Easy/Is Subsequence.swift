// Day 2 Level 1 - https://leetcode.com/problems/is-subsequence/?envType=study-plan&id=level-1

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var i = 0
    var j = 0

    let arrS = Array(s)
    let arrT = Array(t)

    while i < s.count && j < t.count {
        if arrS[i] == arrT[j] {
            i += 1
        }

        j += 1
    }

    return i == s.count
}

print(isSubsequence("abc", "ahbgdc")) // true
print(isSubsequence("ace", "abcde")) // true
print(isSubsequence("aec", "abcde")) // false