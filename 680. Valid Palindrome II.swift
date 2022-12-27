//
//  680. Valid Palindrome II.swift
//  
//
//  Created by Anzhelika Sokolova on 27.12.2022.
//

/*
 Given a string s, return true if the s can be palindrome after deleting at most one character from it.

  

 Example 1:

 Input: s = "aba"
 Output: true
 Example 2:

 Input: s = "abca"
 Output: true
 Explanation: You could delete the character 'c'.
 Example 3:

 Input: s = "abc"
 Output: false
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters.
 */

import Foundation

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let s = Array(s)
        return isValid(true, s) || isValid(false, s)
    }
    
    private func isValid(_ skipLeft: Bool, _ s: [Character]) -> Bool {
        var i = 0, j = s.count - 1, alreadySkipped = false
        
        while i < j {
            if s[i] == s[j] {
                i += 1
                j -= 1
            } else {
                if alreadySkipped {
                    return false
                } else {
                    alreadySkipped = true
                    if skipLeft {
                        i += 1
                    } else {
                        j -= 1
                    }
                }
            }
        }
        
        return true
    }
}
