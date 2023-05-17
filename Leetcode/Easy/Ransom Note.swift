// https://leetcode.com/problems/ransom-note/?envType=study-plan-v2&id=top-interview-150

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineDict: [Character: Int] = [:]
        
        for char in magazine {
            magazineDict[char, default: 0] += 1
        }
        
        for note in ransomNote {
            if let count = magazineDict[note] {
                if count == 0 {
                    return false
                } else {
                    magazineDict[note]! -= 1
                }
            } else {
                return false
            }
        }
        
        return true
    }
}