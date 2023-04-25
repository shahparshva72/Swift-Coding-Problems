class Solution {
    func reverse(_ x: Int) -> Int {
        var num = x

        var reverse = 0

        while num != 0 {
            let digit = num % 10
            reverse = reverse * 10 + digit
            num /= 10
        }

        if reverse > Int32.max || reverse < Int32.min {
            return 0
        }

        return reverse
    }
}

print(Solution().reverse(-123))
print(Solution().reverse(210))