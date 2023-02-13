// 10. Given two strings, find the number of common characters between them.

func solution(s1: String, s2: String) -> Int {
    var resultDictS1 : [Character: Int] = [:]
    var resultDictS2 : [Character: Int] = [:]

    for s in s1 {
        resultDictS1[s, default: 0] += 1
    }

    for s in s2 {
        resultDictS2[s, default: 0] += 1
    }

    var countArr = [Int]()
    for (k1, _) in resultDictS1 {
        for (k2, _) in resultDictS2 {
            if k1 == k2 {
                countArr.append(min(resultDictS1[k1]!, resultDictS2[k2]!))
            }
        }
    }
    return countArr.reduce(0, +)
}
