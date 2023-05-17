// https://leetcode.com/problems/letter-combinations-of-a-phone-number/

class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let phoneDict: [Int: [String]] = [
            2: ["a", "b", "c"],
            3: ["d", "e", "f"],
            4: ["g", "h", "i"],
            5: ["j", "k", "l"],
            6: ["m", "n", "o"],
            7: ["p", "q", "r", "s"],
            8: ["t", "u", "v"],
            9: ["w", "x", "y", "z"]
        ]

        var result: [String] = []

        for digit in digits {
            let digitInt = Int(String(digit))!

            if result.isEmpty {
                result = phoneDict[digitInt]!
            } else {
                var temp: [String] = []

                for char in phoneDict[digitInt]! {
                    for str in result {
                        temp.append(str + char)
                    }
                }

                result = temp
            }
        }
    }
}