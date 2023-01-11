//
//  1470. Shuffle the Array.swift
//  
//
//  Created by Anzhelika Sokolova on 11.01.2023.
//
/*
 Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].

 Return the array in the form [x1,y1,x2,y2,...,xn,yn].

  

 Example 1:

 Input: nums = [2,5,1,3,4,7], n = 3
 Output: [2,3,5,4,1,7]
 Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].
 Example 2:

 Input: nums = [1,2,3,4,4,3,2,1], n = 4
 Output: [1,4,2,3,3,2,4,1]
 Example 3:

 Input: nums = [1,1,2,2], n = 2
 Output: [1,2,1,2]
  

 Constraints:

 1 <= n <= 500
 nums.length == 2n
 1 <= nums[i] <= 10^3
 */

import Foundation

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        guard nums.count == 2*n else { return [] }
       
       var arr = Array(nums[0..<n])
       var arr2 = Array(nums[n..<nums.count])
       var final : [Int] = []
       for i in 0..<n{
           final.append(arr[i])
           final.append(arr2[i])
       }
       return final
    }
}
