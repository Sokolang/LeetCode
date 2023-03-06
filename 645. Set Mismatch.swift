//
//  645. Set Mismatch.swift
//  
//
//  Created by Anzhelika Sokolova on 06.03.2023.
//
/*
 You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.

 You are given an integer array nums representing the data status of this set after the error.

 Find the number that occurs twice and the number that is missing and return them in the form of an array.

  

 Example 1:

 Input: nums = [1,2,2,4]
 Output: [2,3]
 Example 2:

 Input: nums = [1,1]
 Output: [1,2]
  

 Constraints:

 2 <= nums.length <= 104
 1 <= nums[i] <= 104
 */

import Foundation

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var nums = nums
          for i in 0..<nums.count
          {
              while(nums[i] != nums[nums[i] - 1])
              {
                  nums.swapAt(i,nums[i] - 1)
              }
         }
         for i in 0..<nums.count
         {
             if nums[i] != i + 1
             {
                return [nums[i], i + 1]
             }
         }
         return []
    }
}
