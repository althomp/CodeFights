// Definition for singly-linked list:
// public class ListNode<T> {
//     public var value: T
//     public var next: ListNode<T>?
//     public init(_ x: T) {
//         self.value = x
//         self.next = nil
//     }
// }
//
func isListPalindrome(l: ListNode<Int>?) -> Bool {
    if let l = l {
        var fastNode: ListNode<Int>? = l
        var slowNode: ListNode<Int>? = l
        var nodeStack = [ListNode<Int>]()
        
        while let _ = fastNode {
            nodeStack.append(slowNode!)
            fastNode = fastNode!.next
            if let _ = fastNode {
                fastNode = fastNode!.next
                slowNode = slowNode!.next
            }
        }
            
        if let _ = fastNode {
            slowNode = slowNode!.next
        }
        
        while let _ = slowNode {
            let top = nodeStack.removeLast()
            if top.value != slowNode!.value {
                return false
            }
            slowNode = slowNode!.next
        }
    }
    return true
}
