//
//  66.plusOne.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var temp = digits
        if temp.last == 9 {
            _ = temp.popLast()
            return plusOne(temp) + [0]
        }
        if temp.last != nil {
            temp.insert(temp.last! + 1, at: temp.count - 1)
            _ = temp.popLast()
        }else{
            temp.append(1)
        }
        return temp
    }
}
