//
//  387. First Unique Character in a String.swift
//  
//
//  Created by Anzhelika Sokolova on 28.12.2022.
//
/*
 Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

  

 Example 1:

 Input: s = "leetcode"
 Output: 0
 Example 2:

 Input: s = "loveleetcode"
 Output: 2
 Example 3:

 Input: s = "aabb"
 Output: -1
  

 Constraints:

 1 <= s.length <= 105
 s consists of only lowercase English letters.
 */
import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let characters = Array(s)
        for char in characters {
            if(characters.firstIndex(of: char) == characters.lastIndex(of: char)) {
                return characters.firstIndex(of: char) ?? -1
            }
        }
        return -1
    }
}
