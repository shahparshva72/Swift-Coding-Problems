func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 2 else {
        return nums.count
    }

    var index = 2

    for i in 2..<nums.count {
        if nums[i] != nums[index - 2] {
            nums[index] = nums[i]
            index += 1
        }
    }

    return index
}

var array = [1,1,1,2,2,3]

print(removeDuplicates(&array))
