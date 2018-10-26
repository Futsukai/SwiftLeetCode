//
//  704.search.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        while low <= high {
            let mid = (low + high) >> 1
            let guess = nums[mid]
            if guess == target {
                return mid
            }
            if guess > target{
                high = mid - 1
            }else{
                low = mid + 1
            }
        }
        return -1
    }
}
