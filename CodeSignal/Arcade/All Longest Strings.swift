// 9. Given an array of strings, return another array containing all of its longest strings.

func solution(inputArray: [String]) -> [String] {
    
    let maxLength = inputArray.map { str in
        str.count
    }.max() ?? 0
    
    var resultArray: [String] = []
    
    for str in inputArray {
        if str.count == maxLength {
            resultArray.append(str)
        }
    }
    
    return resultArray
}