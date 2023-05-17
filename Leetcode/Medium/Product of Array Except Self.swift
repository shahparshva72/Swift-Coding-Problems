// https://leetcode.com/problems/product-of-array-except-self/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var result = Array(repeating: 0, count: n)
    
    var leftProduct = 1
    for i in 0..<n {
        result[i] = leftProduct
        leftProduct *= nums[i]
    }

    var rightProduct = 1
    for i in (0..<n).reversed() {
        result[i] *= rightProduct
        rightProduct *= nums[i]
    }

    return result
}

print(productExceptSelf([1,2,3,4]))