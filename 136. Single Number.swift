//
//  136. Single Number.swift
//  
//
//  Created by Anzhelika Sokolova on 20.12.2022.
//
/*
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

 You must implement a solution with a linear runtime complexity and use only constant extra space.

  

 Example 1:

 Input: nums = [2,2,1]
 Output: 1
 Example 2:

 Input: nums = [4,1,2,1,2]
 Output: 4
 Example 3:

 Input: nums = [1]
 Output: 1
  

 Constraints:

 1 <= nums.length <= 3 * 104
 -3 * 104 <= nums[i] <= 3 * 104
 Each element in the array appears twice except for one element which appears only once.
 */
import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var mapping = [Int: Bool]()
        
        for num in nums {
            if let _ = mapping[num] {
                mapping[num] = true
            }else {
                mapping.updateValue(false, forKey: num)
            }
        }
        
        return mapping.filter({ $0.value == false }).first?.key ?? 0
    }
}
