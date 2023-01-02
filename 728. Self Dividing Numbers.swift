//
//  728. Self Dividing Numbers.swift
//  PullUpsMeter
//
//  Created by Anzhelika Sokolova on 02.01.2023.
//
/*
 A self-dividing number is a number that is divisible by every digit it contains.

 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 A self-dividing number is not allowed to contain the digit zero.

 Given two integers left and right, return a list of all the self-dividing numbers in the range [left, right].

  

 Example 1:

 Input: left = 1, right = 22
 Output: [1,2,3,4,5,6,7,8,9,11,12,15,22]
 Example 2:

 Input: left = 47, right = 85
 Output: [48,55,66,77]
  

 Constraints:

 1 <= left <= right <= 104
 */
import Foundation

class Solution {
    
    func isSelfDivingNumber(num:Int) -> Bool {
        var temp = num
        var div = 0
        while temp > 0 {
            div = temp % 10
            if div == 0 {
                return false
            } else if num%div != 0 {
                return false
            } else {
                temp = temp/10
            }
        }
        return true
    }
    
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var arr:[Int] = []
        for i in left...right {
            if isSelfDivingNumber(num: i) {
                arr.append(i)
            }
        }
        return arr
    }
}
