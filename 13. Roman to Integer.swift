//
//  13. Roman to Integer.swift
//  
//
//  Created by Anzhelika Sokolova on 02.12.2022.
//

/*
 13. Roman to Integer
 
 Given a roman numeral, convert it to an integer.
 */

class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var prev = 0, out = 0
        for i in s {
            let val = dict[i] ?? 0
            out += val <= prev ? prev : -prev
            prev = val
        }
        out += prev
        return out
    }
}
