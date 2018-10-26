//
//  747.dominantIndex.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        if nums.count < 1 {return -1}
        var max = 0
        var index = 0
        for (i,item) in nums.enumerated() {
            if item > max {
                max = item
                index = i
            }
        }
        for item in nums {
            if item != max {
                if (max >> 1) < item{
                    return -1
                }
            }
        }
        return index
    }
}
