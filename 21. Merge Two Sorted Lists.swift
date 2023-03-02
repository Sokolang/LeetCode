//
//  21. Merge Two Sorted Lists.swift
//  
//
//  Created by Anzhelika Sokolova on 02.03.2023.
//
/*
 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.
 */
import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2

        let head: ListNode = ListNode(0)
        var tmp = head
        while l1 != nil && l2 != nil {
            let v1 = l1!.val
            let v2 = l2!.val

            if v1 > v2 {
                tmp.next = l2!
                l2 = l2?.next
            } else {
                tmp.next = l1!
                l1 = l1?.next
            }
            tmp = tmp.next!
        }
        tmp.next = l1 ?? l2
        return head.next
    }
}
