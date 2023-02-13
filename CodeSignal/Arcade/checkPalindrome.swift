// 3. Check if string is Palindrome

func solution(inputString: String) -> Bool {
    var low = 0
    var high = inputString.count - 1
    var strArray = Array(inputString)
    
    while low < high {
        if strArray[low] != strArray[high] {
            return false
        }
        
        low += 1
        high -= 1
    }
    
    return true
}

// Using reversed() function

func solution(inputString: String) -> Bool {
    return inputString == String(inputString.reversed())
}