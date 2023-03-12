//
//  290. Word Pattern.swift
//  
//
//  Created by Anzhelika Sokolova on 12.03.2023.
//
/*
 Given a pattern and a string s, find if s follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

  

 Example 1:

 Input: pattern = "abba", s = "dog cat cat dog"
 Output: true
 Example 2:

 Input: pattern = "abba", s = "dog cat cat fish"
 Output: false
 Example 3:

 Input: pattern = "aaaa", s = "dog cat cat dog"
 Output: false
  

 Constraints:

 1 <= pattern.length <= 300
 pattern contains only lower-case English letters.
 1 <= s.length <= 3000
 s contains only lowercase English letters and spaces ' '.
 s does not contain any leading or trailing spaces.
 All the words in s are separated by a single space.
 */
import Foundation

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let chars = [Character](pattern)
        let words  = s.components(separatedBy: " ")
        
        if chars.count != words.count { return false }
        
        var chMap: [Character:String] = [:]
        var sMap: [String:Character] = [:]
        
        for i in 0..<chars.count {
            
            let ch = chars[i]
            let word = words[i]
            
            if chMap[ch] == nil { chMap[ch] = word }
            if sMap[word] == nil { sMap[word] = ch }
            
            if sMap[word] != ch || chMap[ch] != word {
                return false
            }
        }
        return true
    }
}
