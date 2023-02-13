// Day 1 Level 1 :- Find Pivot Index - (https://leetcode.com/problems/find-pivot-index/?envType=study-plan&id=level-1)

func pivotIndex(_ nums: [Int]) -> Int {        
    let sum = nums.reduce(0, +)
    var leftSum = 0

    for i in 0..<nums.count {
        if leftSum == sum - leftSum - nums[i] {
            return i
        } 
        leftSum += nums[i]
    }

        
    return -1

    //Better runtime than previous approach
}

/*

Previous Approach


        let nums = nums
        
        for i in 0..<nums.count {

            let left = Array<Int>(nums[0..<i]).reduce(0, +)
            let right = Array<Int>(nums[i+1..<nums.count]).reduce(0, +)
            
            if left == right {
                return i
            }
        }
        
        return -1

*/

print(pivotIndex([1,7,3,6,5,6]))
