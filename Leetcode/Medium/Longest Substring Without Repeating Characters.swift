// Sliding Window technique

func lengthOfLongestSubstring(_ s: String) -> Int {
    let sArr = Array(s)
    var counter = 0
    var charSet = Set<Character>()
    var i = 0
    var j = 0

    while i < sArr.count && j < sArr.count {
        if !charSet.contains(sArr[j]) {
            charSet.insert(sArr[j])
            j += 1
            counter = max(answer, j - i)
        } else {
            charSet.remove(sArr[i])
            i += 1
        }
    }

    return counter
}

// Code for O(n^3) implementation

/* 
func lengthOfLongestSubstring(_ s: String) -> Int {
        let sArr = Array(s)
        var answer = ""

        for i in 0..<sArr.count {
            var subStr = ""
            for j in i..<sArr.count{
                subStr += String(sArr[j])
                
                if subStr.count > answer.count, Set(subStr).count == subStr.count {
                    answer = subStr
                }

            }
        }


        return answer.count
    }
*/

print(lengthOfLongestSubstring("abcabcbb"))