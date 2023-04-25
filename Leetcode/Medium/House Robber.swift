class Solution {
    func rob(_ nums: [Int]) -> Int {
        
        guard nums.count > 2 else {
            return nums.max()!
        }
        
        var result = Array(repeating: 0, count: nums.count)
        result[0] = nums[0]
        result[1] = max(nums[0], nums[1])
        
        for i in 2..<result.count {
            result[i] = max(nums[i]+result[i-2], result[i-1])
        }
        
        return result.last!
    }
} 