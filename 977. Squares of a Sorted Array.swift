//
//  977. Squares of a Sorted Array.swift
//  
//
//  Created by Anzhelika Sokolova on 07.02.2023.
//

/*
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

  

 Example 1:

 Input: nums = [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Explanation: After squaring, the array becomes [16,1,0,9,100].
 After sorting, it becomes [0,1,9,16,100].
 Example 2:

 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
  

 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums is sorted in non-decreasing order.
  

 Follow up: Squaring each element and sorting the new array is very trivial, could you find an O(n) solution using a different approach?
 */

import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var ptr1 = 0
        var ptr2 = nums.count - 1
        var ptr3 = ptr2
        var squares = Array(repeating: 0, count: nums.count)
        while ptr1<=ptr2 {
            let sqr1 = nums[ptr1]*nums[ptr1]
            let sqr2 = nums[ptr2]*nums[ptr2]
            if sqr1 <= sqr2 {
                squares[ptr3] = sqr2
                ptr2 -= 1
            }
            else {
                squares[ptr3] = sqr1
                ptr1 += 1
            }
            ptr3 -= 1
        }
        return squares
    }
}
