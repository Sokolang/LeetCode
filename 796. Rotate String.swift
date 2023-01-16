//
//  796. Rotate String.swift
//  
//
//  Created by Anzhelika Sokolova on 16.01.2023.
//
/*
 Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.

 A shift on s consists of moving the leftmost character of s to the rightmost position.

 For example, if s = "abcde", then it will be "bcdea" after one shift.
  

 Example 1:

 Input: s = "abcde", goal = "cdeab"
 Output: true
 Example 2:

 Input: s = "abcde", goal = "abced"
 Output: false
  

 Constraints:

 1 <= s.length, goal.length <= 100
 s and goal consist of lowercase English letters.
 */

import Foundation

class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count else {return false}
        guard !s.isEmpty && !goal.isEmpty else {return true}
        return (s + s).contains(goal)
    }
}
