//
//  169. Majority Element.swift
//  
//
//  Created by Anzhelika Sokolova on 12.01.2023.
//
/*
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  

 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
  

 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
  

 Follow-up: Could you solve the problem in linear time and in O(1) space?
 */
import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var v = 0, res = 0
        var dict = [Int: Int]()
        nums.forEach {
            var t = 1
            if let n = dict[$0] {
                t = n + 1
            }
            
            if t > v {
                res = $0
                v = t
            }
            dict[$0] = t
        }
        
        return res
    }
}
