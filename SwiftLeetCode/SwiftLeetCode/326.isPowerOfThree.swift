//
//  326.isPowerOfThree.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation

extension Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        
        return n > 0 && (1162261467 % n == 0)
    }
}
