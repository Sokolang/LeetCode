//
//  415. Add Strings.swift
//  
//
//  Created by Anzhelika Sokolova on 22.12.2022.
//
/*
 Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.

 You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.

  

 Example 1:

 Input: num1 = "11", num2 = "123"
 Output: "134"
 Example 2:

 Input: num1 = "456", num2 = "77"
 Output: "533"
 Example 3:

 Input: num1 = "0", num2 = "0"
 Output: "0"
  

 Constraints:

 1 <= num1.length, num2.length <= 104
 num1 and num2 consist of only digits.
 num1 and num2 don't have any leading zeros except for the zero itself.
 */

import Foundation

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let toInteger = [Character: Int](uniqueKeysWithValues: zip("0123456789",
                                                               0...9))
    let firstListOfDigits: [Int] = num1.map { toInteger[$0]! }
    let secondListOfDigits: [Int] = num2.map { toInteger[$0]! }

    var i: Int = firstListOfDigits.count - 1
    var j: Int = secondListOfDigits.count - 1
    var hasCarryOver: Bool = false
    var numberString: String = ""
    while i >= 0 || j >= 0 {
        var sum: Int = hasCarryOver ? 1 : 0
        if i >= 0 { sum += firstListOfDigits[i] }
        if j >= 0 { sum += secondListOfDigits[j] }
        hasCarryOver = sum > 9
        if hasCarryOver {
            sum -= 10
        }
        numberString.append("\(sum)")
        i -= 1; j -= 1
    }
    if hasCarryOver {
        numberString.append("1")
    }

    return String(numberString.reversed())
    }
}
