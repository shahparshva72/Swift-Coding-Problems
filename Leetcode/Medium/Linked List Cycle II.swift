// https://leetcode.com/problems/linked-list-cycle-ii/?envType=study-plan&id=level-1

func detectCycle(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return nil
    }

    var slow = head
    var fast = head?.next

    if fast?.next == nil {
        if slow === fast {
            return fast
        } else {
            return nil
        }
    }

    while fast != nil && fast?.next != nil {
        if slow === fast {
            var pos = head
            while slow !== pos {
                slow = slow?.next
                pos = pos?.next
            }
            return pos
        }
    }

    return nil
}