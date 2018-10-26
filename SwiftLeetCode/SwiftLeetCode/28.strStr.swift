//
//  28.strStr.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {return 0}
        if let range = haystack.range(of: needle){
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        }
        return -1
    }
}
