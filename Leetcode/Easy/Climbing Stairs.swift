class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }

        var arr = Array(repeating: 0, count: n + 1)
        arr[1] = 1
        arr[2] = 2

        for i in 3..<arr.count {
            arr[i] = arr[i - 1] + arr[i - 2]
        }

        return arr[n]

    }
}