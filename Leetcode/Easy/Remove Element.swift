//https://leetcode.com/problems/remove-element/?envType=study-plan-v2&id=top-interview-150

// Solution 1
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for n in nums {
            if n == val {
                if let index = nums.firstIndex(of: n) {
                    nums.remove(at: index)
                }
            }
        }

        return nums.count
    }
}

// Solution 2
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val } 
        return nums.count
    }
}