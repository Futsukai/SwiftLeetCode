//
//  821.shortestToChar.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var back = [Int]()
        var left = -1
        var right = -1
        for (index,t) in S.enumerated() {
            if t == C{
                if left < right { left = right }
                if right < index { right = index }
                for i in back.count...right{
                    let r = right - i
                    if left == -1 {
                        back.append(r)
                    }else{
                        let l = abs(left - i)
                        let m = min(l, r)
                        back.append(m)
                    }
                }
            }
        }
        if S.count - 1 > right {
            for i in 1..<S.count - right{
                back.append(i)
            }
        }
        return back
    }
}
