class Solution {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        var resultArr = Array(repeating: 0, count: 10001)

        for num in nums {
            resultArr[num] += num
        }

        var prev = 0, curr = 0

        for i in 0..<10001 {
            let temp: Int = curr
            curr = max(curr, prev + resultArr[i])
            prev = temp
        }

        return curr
    }
}

print(Solution().deleteAndEarn([3,4,2]))
print(Solution().deleteAndEarn([2,2,3,3,3,4]))