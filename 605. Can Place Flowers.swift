//
//  605. Can Place Flowers.swift
//  
//
//  Created by Anzhelika Sokolova on 18.02.2023.
//
/*
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

  

 Example 1:

 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 Example 2:

 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
  

 Constraints:

 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 */

import Foundation

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var index = 0
        var result = 0
        while index < flowerbed.count {
            if flowerbed[index] == 0, (index == 0 || flowerbed[index - 1] == 0), (index + 1 == flowerbed.count || flowerbed[index + 1] == 0) {
                flowerbed[index] = 1
                result += 1
                
                if result >= n { return true }
            }
            if result >= n { return true }
            
            index += 1
        }
        return false
    }
}
