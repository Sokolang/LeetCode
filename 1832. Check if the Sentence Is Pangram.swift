//
//  1832. Check if the Sentence Is Pangram.swift
//  
//
//  Created by Anzhelika Sokolova on 26.02.2023.
//
/*
 A pangram is a sentence where every letter of the English alphabet appears at least once.

 Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or false otherwise.

  

 Example 1:

 Input: sentence = "thequickbrownfoxjumpsoverthelazydog"
 Output: true
 Explanation: sentence contains at least one of every letter of the English alphabet.
 Example 2:

 Input: sentence = "leetcode"
 Output: false
  

 Constraints:

 1 <= sentence.length <= 1000
 sentence consists of lowercase English letters.
 */

import Foundation

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        if sentence.count<26{
            return false
        } else {
            var array = [Character]()
            for char in sentence {
                if !array.contains(char){
                    array.append(char)
                    if array.count == 26 {
                        return true
                    }
                }
            }
            return false
        }
    }
}
