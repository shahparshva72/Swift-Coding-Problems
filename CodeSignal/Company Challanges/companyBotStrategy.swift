// Problem Link - https://app.codesignal.com/challenge/6jzS7zy9SkDyufdBx


func solution(trainingData: [[Int]]) -> Double {
    var trainingDict: [Int: [Int]] = [:]
    for i in trainingData {
        trainingDict[i[1], default: [Int]()].append(i[0])
    }
    
    guard trainingDict[1] != nil else {
        return 0.0
    }
    
    let average = Double((trainingDict[1] ?? [Int]()).reduce(0, +)) / Double(trainingDict[1]?.count ?? 1)
    
    return average
}