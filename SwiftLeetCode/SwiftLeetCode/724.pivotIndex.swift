//
//  724.pivotIndex.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return -1
        }
        var l =  0
        var r = nums.reduce(0, +)
        for i in 0..<nums.count{
            if i > 0 {
                l += nums[i - 1]
            }
            r -= nums[i]
            if l == r {
                return i
            }
        }
        return -1
    }
}
