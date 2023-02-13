// Day 1 Level 1 :-  Running Sum of 1D Array (https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1)

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
