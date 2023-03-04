//
//  541. Reverse String II.swift
//  
//
//  Created by Anzhelika Sokolova on 04.03.2023.
//
/*
 Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.

 If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.

  

 Example 1:

 Input: s = "abcdefg", k = 2
 Output: "bacdfeg"
 Example 2:

 Input: s = "abcd", k = 2
 Output: "bacd"
  

 Constraints:

 1 <= s.length <= 104
 s consists of only lowercase English letters.
 1 <= k <= 104
 */
import Foundation

class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
          if k == 0 {
              return s
          }
          let count = s.count
          let time = count/(2*k)
          let left = count%(2*k)
          
         var array = [String]()
         for i in 0..<time {
             array.append(String(s.suffix(count-2*k*i).prefix(k*2)))
         }
         
         var result = ""
         for str in array {
             result += String(str.prefix(k).reversed()+str.suffix(k))
         }
         
         let leftStr = s.suffix(left)
         let leftReversed = leftStr.prefix(k).reversed()
         let leftUnreversed = leftStr.suffix(leftStr.count-leftReversed.count)
         
         result += leftReversed+leftUnreversed
         return result
     }
 }
