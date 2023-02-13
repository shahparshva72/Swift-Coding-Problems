/*

7. Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. 
Sequence containing only one element is also considered to be strictly increasing.

*/

func solution(sequence: [Int]) -> Bool {
    
    if isIncreasingSequence(sequence) {
        return true
    }
    
    var seq = sequence
    var indexes: [Int] = []
    for i in 0..<(seq.count-1) {
        if seq[i] >= seq[i+1] {
            indexes += [i, i+1]
        }
    }
    
    for i in 0..<indexes.count{
        var tempSeq = sequence
        tempSeq.remove(at: indexes[i])
        
        if isIncreasingSequence(Array<Int>(tempSeq)) {
            return true
        }
    }    
    
    return false
}

func isIncreasingSequence(_ array: [Int]) -> Bool {
    for i in 0..<array.count-1 {
        if (array[i] >= array[i+1]) {
            return false
        }
    }
    
    return true
}