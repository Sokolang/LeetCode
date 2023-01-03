//
//  392. Is Subsequence.swift
//  
//
//  Created by Anzhelika Sokolova on 03.01.2023.
//

/*
 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

  

 Example 1:

 Input: s = "abc", t = "ahbgdc"
 Output: true
 Example 2:

 Input: s = "axc", t = "ahbgdc"
 Output: false
  

 Constraints:

 0 <= s.length <= 100
 0 <= t.length <= 104
 s and t consist only of lowercase English letters.
  

 Follow up: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?
 */

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var stack = Stack(s)
        for character in t {
            if let element = stack.peek, character == element {
                stack.pop()
            }
        }
        return stack.isEmpty
    }
    
    struct Stack {
        private var stack: [Character] = []
        
        init(_ s: String) {
            stack = Array(s).reversed()
        }
        
        public var isEmpty: Bool {
            return stack.isEmpty
        }
        
        public var peek: Character? {
            return stack.last
        }
        
        public mutating func pop() -> Character? {
            return stack.popLast()
        }
    }
}
