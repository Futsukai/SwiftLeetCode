//
//  14.longestCommonPrefix.swift
//  SwiftLeetCode
//
//  Created by zhangwei on 2018/10/26.
//  Copyright © 2018年 Mr.Z. All rights reserved.
//

import Foundation
extension Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count < 1 {return ""}
        var minNumer = Int.max
        var minStr = ""
        
        for str in strs {
            if str.count < minNumer{
                minNumer = str.count
                minStr = str
            }
        }
        var newStrs = strs
        newStrs.remove(at: strs.index(of: minStr)!)
        var maxCommonNumer = 0
        while newStrs.count > 0  {
            let testSrt = newStrs.popLast()
            for i in 0..<minNumer {
                if minStr[(minStr.index((minStr.startIndex), offsetBy: i))] == testSrt![(testSrt?.index((testSrt?.startIndex)!, offsetBy: i))!]{
                    maxCommonNumer = i + 1
                }else{
                    if i == 0 {
                        return ""
                    }else{
                        minStr = String(strs.first!.prefix(maxCommonNumer))
                        minNumer = minStr.count
                    }
                    break
                }
            }
        }
        return minStr
    }
}
