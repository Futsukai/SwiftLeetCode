//
//  File.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/24.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//
import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            let x = nums[i]
            let r = target - x
            for j in i..<nums.count{
                if r == nums[j] && j != i{
                    return [i, j]
                }
            }
        }
        return []
    }
}
