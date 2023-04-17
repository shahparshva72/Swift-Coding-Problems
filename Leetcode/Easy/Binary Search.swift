class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.endIndex - 1

        while low <= high {

            let midIndex = low + (high - low) / 2

            if target > nums[midIndex] {
                low = midIndex + 1
            } else if target < nums[midIndex] {
                high = midIndex - 1
            } else {
                return midIndex
            }
        }

        return -1
    }

}