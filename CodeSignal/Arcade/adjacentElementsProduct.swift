// 4. Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

func solution(inputArray: [Int]) -> Int {
    var productArr = [Int]()
    for i in 1..<inputArray.count {
        let product = inputArray[i-1] * inputArray[i]
        productArr.append(product)
    }
    var max = 0
    if let maximum = productArr.max() {
        max = maximum
    }
    
    return max
}
