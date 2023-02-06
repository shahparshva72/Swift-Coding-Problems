func threeSum(_ nums: [Int]) -> [[Int]] {

    var resultArr = [[Int]]()

    let numbers = nums.sorted()

    for i in 0..<numbers.count - 2 {

        if i > 0 && numbers[i] == numbers[i-1] {
            continue
        }

        var low = i+1
        var high = numbers.endIndex - 1
        

        while low < high {
            let sum = numbers[i] + numbers[low] + numbers[high]

            if sum == 0 {
                resultArr.append([numbers[i], numbers[low], numbers[high]])
                while low < high && numbers[low] == numbers[low + 1] {
                    low += 1
                }
                while low < high && numbers[high] == numbers[high - 1] {
                    high -= 1
                }
                low += 1
                high -= 1
            } else if sum < 0 {
                low += 1
            } else if sum > 0 {
                high -= 1
            }
        }
    }

    return resultArr
}

// print(threeSum([-1,0,1,2,-1,-4])) Output: [[-1, -1, 2], [-1, 0, 1]]