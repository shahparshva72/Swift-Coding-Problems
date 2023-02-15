func addBinary(_ a: String, _ b: String) -> String {
    let arrA = Array(a)
    let arrB = Array(b)

    var carry = 0
    var result = ""

    var i = a.count - 1
    var j = b.count - 1
    while i >= 0 || j >= 0 || carry > 0  {
        let aInt = i >= 0 ? Int(String(arrA[i]))! : 0
        let bInt = j >= 0 ? Int(String(arrB[j]))! : 0

        let sum = aInt + bInt + carry
        carry = sum / 2
        result = "\(sum % 2)" +  result
        i -= 1
        j -= 1
    }

    return result
}

/*

    // 204 Test cases passed

    var binSum = 0

    if let aInt = Int(a, radix: 2), let bInt = Int(b, radix: 2) {
        binSum = aInt + bInt
    }

    return String(binSum, radix: 2)
*/

print(addBinary("11", "1"))
