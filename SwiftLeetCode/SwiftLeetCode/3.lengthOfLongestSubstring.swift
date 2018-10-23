//
//  3.lengthOfLongestSubstring.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/24.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution{
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count <= 1 { return s.count}
        var g = ""
        var d = 0
        for t in s {
            if g.contains(t){
                g = String(g[g.index(after: g.index(of: t)!)...])
            }
            g += String(t)
            if g.count > d{
                d =  g.count
            }
        }
        return d
    }
}
