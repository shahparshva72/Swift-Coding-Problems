// DAY 3 Level 1 - https://leetcode.com/problems/merge-two-sorted-lists/

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


func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

    if list1 == nil {
        return list2
    }

    if list2 == nil {
        return list1
    }

    var l1 = list1
    var l2 = list2


    var resultNode: ListNode?
    var temp: ListNode?

    if l1!.val <= l2!.val {
        resultNode = l1
        l1 = l1?.next
    } else {
        resultNode = l2
        l2 = l2?.next
    }

    temp = resultNode

    while l1 != nil && l2 != nil {
        if l1!.val <= l2!.val {
            temp?.next = l1
            temp = l1
            l1 = l1?.next
        } else {
            temp?.next = l2
            temp = l2
            l2 = l2?.next
        }
    }

    temp?.next = l1 ?? l2

    return resultNode
}