//
//  434. Number of Segments in a String.swift
//  
//
//  Created by Anzhelika Sokolova on 23.02.2023.
//
/*
 Given a string s, return the number of segments in the string.

 A segment is defined to be a contiguous sequence of non-space characters.

  

 Example 1:

 Input: s = "Hello, my name is John"
 Output: 5
 Explanation: The five segments are ["Hello,", "my", "name", "is", "John"]
 Example 2:

 Input: s = "Hello"
 Output: 1
  

 Constraints:

 0 <= s.length <= 300
 s consists of lowercase and uppercase English letters, digits, or one of the following characters "!@#$%^&*()_+-=',.:".
 The only space character in s is ' '.
 */
import Foundation

class Solution {
    func countSegments(_ s: String) -> Int {
        var count = 0
        var flag = false
        for c in s.lowercased() {
            if " " != String(c) {
                flag = true
            } else {
                if flag { count += 1 }
                flag = false
            }
        }
        if flag { count += 1 }
        return count
    }
}
