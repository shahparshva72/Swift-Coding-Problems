// Day 2 Level 1 - https://leetcode.com/problems/isomorphic-strings/

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    let arrS = Array(s)
    let arrT = Array(t)

    var sDict: [Character: Character] = [:]
    var tDict: [Character: Character] = [:]

    // for (sElement, tElement) in zip(arrS, arrT) {
    //     sDict[sElement, default: []].insert(tElement)
    //     tDict[tElement, default: []].insert(sElement)
    // }

    for i in 0..<arrS.count {
        let sElement = arrS[i]
        let tElement = arrT[i]

        if let sValue = sDict[sElement], sValue != tElement {
            return false
        }

        if let tValue = tDict[tElement], tValue != sElement {
            return false
        }

        sDict[sElement] = tElement
        tDict[tElement] = sElement
    }

    return true
}

print(isIsomorphic("foo", "bar"))