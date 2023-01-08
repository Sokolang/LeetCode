//
//  1512. Number of Good Pairs.swift
//  
//
//  Created by Anzhelika Sokolova on 08.01.2023.
//

/*
 Given an array of integers nums, return the number of good pairs.

 A pair (i, j) is called good if nums[i] == nums[j] and i < j.

  

 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  

 Constraints:

 1 <= nums.length <= 100
 1 <= nums[i] <= 100
 */

import Foundation

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        nums.forEach({ dict[$0] = (dict[$0] ?? 0) + 1 })
        return dict.values.reduce(0, { $0 + helper(n: $1) })
    }
    func helper(n: Int) -> Int {
        return n == 1 ? 0 : n - 1 + helper(n: n - 1)
    }
}
