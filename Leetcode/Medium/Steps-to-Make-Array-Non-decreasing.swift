func totalSteps(_ nums: [Int]) -> Int {
    guard !isNonDecreasing(nums) else {
        return 0
    }

    var counter = 0
    var numbers = nums
    var j = 0

    for i in 1..<numbers.count {
        if numbers[i - 1] > numbers[i] {
            j = max(j, i - 1)
        } else if j > 0 {
            numbers.remove(at: i)
            counter += 1
            j = 0
        }
    }

    return counter + (j > 0 ? 1 : 0)
}

func isNonDecreasing(_ array: [Int]) -> Bool {
    for i in 1..<array.count {
        if array[i - 1] > array[i] {
            return false
        }
    }
    return true
}

print("Steps:: \(totalSteps([5,3,4,4,7,3,6,11,8,5,11]))")