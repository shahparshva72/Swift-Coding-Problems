/*

6. Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, 
each statue having an non-negative integer size. Since he likes to make things perfect, 
he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. 
He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.

*/

func solution(statues: [Int]) -> Int {
    var count = 0
    let sorted = statues.sorted()
    
    for i in sorted.first!...sorted.last! {
        if !sorted.contains(i) {
            count += 1
        }
    }
    
    return count
}