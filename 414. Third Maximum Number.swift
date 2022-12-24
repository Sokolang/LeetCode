//
//  414. Third Maximum Number.swift
//  
//
//  Created by Anzhelika Sokolova on 24.12.2022.
//

/*
 Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.

  

 Example 1:

 Input: nums = [3,2,1]
 Output: 1
 Explanation:
 The first distinct maximum is 3.
 The second distinct maximum is 2.
 The third distinct maximum is 1.
 Example 2:

 Input: nums = [1,2]
 Output: 2
 Explanation:
 The first distinct maximum is 2.
 The second distinct maximum is 1.
 The third distinct maximum does not exist, so the maximum (2) is returned instead.
 Example 3:

 Input: nums = [2,2,3,1]
 Output: 1
 Explanation:
 The first distinct maximum is 3.
 The second distinct maximum is 2 (both 2's are counted together since they have the same value).
 The third distinct maximum is 1.
  

 Constraints:

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 Follow up: Can you find an O(n) solution?
 */

import Foundation

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max = [Int.min, Int.min, Int.min]

    for n in nums {
        if n > max[0] && !max.contains(n) {
            max[0] = n
        
            if max[0] > max[1] {
                max.swapAt(0, 1)
            
                if max[1] > max[2] {
                    max.swapAt(1, 2)
                }
            }
        }
    }

    if max[0] == Int.min {
        return max[2]
    }

    return max[0]
}
    }
