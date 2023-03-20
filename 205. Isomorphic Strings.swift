//
//  205. Isomorphic Strings.swift
//  
//
//  Created by Anzhelika Sokolova on 20.03.2023.
//
/*
 Given two strings s and t, determine if they are isomorphic.

 Two strings s and t are isomorphic if the characters in s can be replaced to get t.

 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

  

 Example 1:

 Input: s = "egg", t = "add"
 Output: true
 Example 2:

 Input: s = "foo", t = "bar"
 Output: false
 Example 3:

 Input: s = "paper", t = "title"
 Output: true
  

 Constraints:

 1 <= s.length <= 5 * 104
 t.length == s.length
 s and t consist of any valid ascii character.
 */
import Foundation

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
       let s = Array(s)
      let t = Array(t)
      
      var dict: [Character: Character] = [:]
      
      for i in 0..<s.count {
        if let cache = dict[s[i]] {
         if cache != t[i] {
           return false
         }
       } else if dict.values.contains(t[i]) {
         return false
       } else {
         dict[s[i]] = t[i]
       }
     }
     
     return true
    }
}
