class SmallestInfiniteSet {

    var intSet = Set<Int>()

    init() {
        intSet = Set(Array(1...1000))
    }
    
    func popSmallest() -> Int {
        let smallestInt = intSet.min()!
        intSet.remove(smallestInt)
        return smallestInt
    }
    
    func addBack(_ num: Int) {
        intSet.update(with: num)
    }
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * let obj = SmallestInfiniteSet()
 * let ret_1: Int = obj.popSmallest()
 * obj.addBack(num)
 */