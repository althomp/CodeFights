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
func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
   
    var start : ListNode<Int>? = nil
    var node : ListNode<Int>? = l
    var prevNode : ListNode<Int>? = nil
    
    while let n = node {
        if n.value == k {
            if let newNode = prevNode {
                newNode.next = n.next
                node = newNode
            }
        } else {
            start = (start == nil) ? n : start
            prevNode = n
        }
        node = node!.next
    }
    
    return start
}
