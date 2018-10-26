//
//  13.romanToInt.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func romanToInt(_ s: String) -> Int {
        let romanDict = ["I":1, "V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var sum = 0
        for i in s.indices{
            let nextIndex =  s.index(after: i)
            let current = romanDict[String(s[i])]
            if nextIndex == s.endIndex {
                sum += current!
                break
            }
            
            let next = romanDict[String(s[nextIndex])]
            if next! > current!{
                sum -= current!
            }else{
                sum += current!
            }
            
        }
        return sum
    }
}
