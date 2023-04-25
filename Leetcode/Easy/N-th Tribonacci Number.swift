class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n <= 2 {
            return 1
        } else {
            // return tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)

            var t0 = 0, t1 = 1, t2 = 1
            for i in 0..<n-2 {
                let tn = t0 + t1 + t2
                t0 = t1
                t1 = t2
                t2 = tn
            }
            return t2
        }
    }
}