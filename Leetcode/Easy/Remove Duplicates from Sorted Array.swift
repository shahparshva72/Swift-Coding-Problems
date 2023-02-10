func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 0
    for i in 1..<nums.count {
        if nums[index] != nums[i] {
            index += 1
            nums[index] = nums[i]
        }

    }
    
    return index + 1
}

var array = [0,0,1,1,1,2,2,3,3,4]

print(removeDuplicates(&array))
