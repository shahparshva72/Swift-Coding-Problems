// Day 3 Level 1 - https://leetcode.com/problems/reverse-linked-list/?envType=study-plan&id=level-1


public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}


func reverseList(_ head: ListNode?) -> ListNode? {
    var resultNode: ListNode?
    var current: ListNode? = head

    while current != nil {
        let temp = current?.next
        current?.next = resultNode
        resultNode = current
        current = temp
    }

    return resultNode
}