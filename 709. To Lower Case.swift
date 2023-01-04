//
//  709. To Lower Case.swift
//  
//
//  Created by Anzhelika Sokolova on 04.01.2023.
//
/*
 Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.

  

 Example 1:

 Input: s = "Hello"
 Output: "hello"
 Example 2:

 Input: s = "here"
 Output: "here"
 Example 3:

 Input: s = "LOVELY"
 Output: "lovely"
  

 Constraints:

 1 <= s.length <= 100
 s consists of printable ASCII characters.
 */
import Foundation

class Solution {
    func toLowerCase(_ s: String) -> String {
        return s.lowercased()
    }
}
