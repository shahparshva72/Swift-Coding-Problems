class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
       let maxNum = candies.max()
        
        var result = [Bool]()
        
        for i in candies{
            if let max = maxNum, i + extraCandies >= max {
                result.append(true)
            }
            else {
                result.append(false)
            }
        }
        
        return result
    }
}