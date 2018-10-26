//
//  784.letterCasePermutation.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    ///not pass
    func letterCasePermutation(_ S: String) -> [String] {
        var backs = [String]()
        backs.append(S)
        var i = 0
        for t in S.unicodeScalars {
            if t.value > 57{
                let p = String(UnicodeScalar(t.value ^ 32)!)
                let n = S.replacingCharacters(in: Range(NSMakeRange(i, 1), in:S)!, with: p)
                backs.append(n)
            }
            i += 1
        }
        return backs
    }
}
