//
//  118. Pascal's Triangle.swift
//  
//
//  Created by Anzhelika Sokolova on 13.02.2023.
//
/*
 Given an integer numRows, return the first numRows of Pascal's triangle.

 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

 Example 1:

 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
 Example 2:

 Input: numRows = 1
 Output: [[1]]
  

 Constraints:

 1 <= numRows <= 30
 */
import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var results = [[Int]]()
        if (numRows == 0) {
            return results
        }
        for i in 0..<numRows {
            var currentResults = [Int]()
            for j in 0...i {
                if (i > 1 && j > 0 && j < i) {
                    let value = results[i-1][j] + results[i-1][j-1]
                    currentResults.append(value)
                } else {
                    currentResults.append(1)
                }
            }
            results.append(currentResults)
        }
        return results
    }
}
