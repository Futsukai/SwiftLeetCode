//
//  888.fairCandySwap.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        let sumA = A.reduce(0, +)
        let sumB = B.reduce(0, +)
        let bSet = Set(B)
        for x in A {
            let y = x + (sumB - sumA) / 2
            if bSet.contains(y){
                return [x,y]
            }
            
        }
        return []
    }
}
