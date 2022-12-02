//
//  14. Longest Common Prefix.swift
//  
//
//  Created by Anzhelika Sokolova on 02.12.2022.
//

/*
 14. Longest Common Prefix
 
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first else { return "" }
        var currentPrefix = ""
        var bestPrefix = ""
        for letter in first {
            currentPrefix.append(letter)
            for word in strs {
                if !word.hasPrefix(currentPrefix) {
                    return bestPrefix
                }
            }
            bestPrefix = currentPrefix
        }
        return bestPrefix
    }
}
