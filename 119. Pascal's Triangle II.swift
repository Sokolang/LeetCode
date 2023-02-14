//
//  119. Pascal's Triangle II.swift
//  
//
//  Created by Anzhelika Sokolova on 14.02.2023.
//
/*
 Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
 Example 1:

 Input: rowIndex = 3
 Output: [1,3,3,1]
 Example 2:

 Input: rowIndex = 0
 Output: [1]
 Example 3:

 Input: rowIndex = 1
 Output: [1,1]
  

 Constraints:

 0 <= rowIndex <= 33

 */
import Foundation

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var arr: Array = Array(repeating: 1, count: (rowIndex+1))
        for i in 0..<rowIndex
        {
            for j in (1..<(i+1)).reversed()
            {
                arr[j] = arr[j] + arr[j-1]
            }
        }
        return arr
    }
}
