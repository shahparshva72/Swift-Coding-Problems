// Problem Description - https://app.codesignal.com/challenge/pRuhLib5DdetsY4E7 



func isDouble(str: String) -> Bool {
    
    if let _ = Double(str) {
        return true
    }
    
    return false
}

func solution(prices: [Double], notes: [String], x: Double) -> Bool {
    let notes = notes
    var inStore = Array(repeating: 0.0, count: prices.count)
    var diff = 0.0
    
    for i in 0..<prices.count {
        if notes[i].contains("lower") {
            diff = Double(notes[i].split(separator: "%").filter{ isDouble(str: String($0)) }.joined()) ?? 0.0
            inStore[i] = prices[i] / ((100 - diff) / 100)
        } else if notes[i].contains("higher") {
            diff = Double(notes[i].split(separator: "%").filter{ isDouble(str: String($0)) }.joined()) ?? 0.0
            inStore[i] = prices[i] / ((100 + diff) / 100)
        } else if notes[i].contains("Same") {
            inStore[i] = prices[i]
        }
    }
    
    let difference = prices.reduce(0, +) - inStore.reduce(0, +)
    print(difference)
    return Float(difference) <= Float(x)
}