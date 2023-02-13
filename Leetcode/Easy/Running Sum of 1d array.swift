func runningSum(_ nums: [Int]) -> [Int] {
    var resultArr = Array(repeating: 0, count: nums.count)

    var sum = 0
    for i in 0..<nums.count {
        sum += nums[i]
        resultArr[i] = sum
    }

    return resultArr
}

print(runningSum([1,2,3,4,5]))
