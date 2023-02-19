//
//  766. Toeplitz Matrix.swift
//  
//
//  Created by Anzhelika Sokolova on 19.02.2023.
//
/*
 Given an m x n matrix, return true if the matrix is Toeplitz. Otherwise, return false.

 A matrix is Toeplitz if every diagonal from top-left to bottom-right has the same elements.
 */

import Foundation

class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        for i in 0..<matrix.count-1 {
            for j in 0..<matrix[i].count-1 {
                if matrix[i][j] != matrix[i+1][j+1] {
                    return false
                }
            }
        }
        return true
    }
}
