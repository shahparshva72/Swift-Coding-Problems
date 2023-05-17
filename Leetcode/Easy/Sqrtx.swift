// https://leetcode.com/problems/sqrtx/?envType=study-plan-v2&id=top-interview-150

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }

        if x == 1 {
            return 1
        }

        var left = 2
        var right = x

        while left < right {
            let mid = left + (right - left) / 2

            if mid * mid == x {
                return mid
            } else if mid * mid > x {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return left - 1
    }
}