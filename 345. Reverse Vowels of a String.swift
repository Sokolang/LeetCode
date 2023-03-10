//
//  345. Reverse Vowels of a String.swift
//  
//
//  Created by Anzhelika Sokolova on 10.03.2023.
//
/*
 Given a string s, reverse only all the vowels in the string and return it.

 The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

  

 Example 1:

 Input: s = "hello"
 Output: "holle"
 Example 2:

 Input: s = "leetcode"
 Output: "leotcede"
  

 Constraints:

 1 <= s.length <= 3 * 105
 s consist of printable ASCII characters.
 */

import Foundation

class Solution {
    func reverseVowels(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        var reverseVowelsStr = Array(s)
        let vowels = Set("aeiouAEIOU")
        var startIndex = 0
        var endIndex = s.count - 1
        
        while startIndex < endIndex {
            
            let isVowelAtStart = vowels.contains(reverseVowelsStr[startIndex])
            let isVowelAtEnd = vowels.contains(reverseVowelsStr[endIndex])
            
            if isVowelAtStart, isVowelAtEnd {
                reverseVowelsStr.swapAt(startIndex, endIndex)
                startIndex += 1
                endIndex -= 1
            } else if !isVowelAtStart {
                startIndex += 1
            } else if !isVowelAtEnd {
                endIndex -= 1
            }
            
        }
        
        return String(reverseVowelsStr)
    }
}
