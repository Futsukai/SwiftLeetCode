//
//  867.transpose.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var ans = [[Int]](repeating: [Int](repeating: 0, count: A.count), count: A[0].count)
        for (r,row) in A.enumerated() {
            for (c,val) in row.enumerated(){
                ans[c][r] = val
            }
        }
        return ans
    }
}
