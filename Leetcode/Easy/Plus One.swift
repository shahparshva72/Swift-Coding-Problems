// 2 methods


// Method 1

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var i = digits.endIndex - 1

        while i >= 0 {
            if digits[i] < 9 {
                digits[i] += 1
                break
            } else {
                digits[i] = 0
                i -= 1
            }
        }

        if i < 0 {
            digits.insert(1, at: 0)
        }

        return digits
    }
}

// Method 2: Using Map, compactMap:: May not work for large numbers
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let digitsStr = digits.map { String($0) }.joined()
        var num = Int(digitsStr)!
        num += 1
        let resultString = String(num)


        return resultString.compactMap{ $0.wholeNumberValue }
    }
}