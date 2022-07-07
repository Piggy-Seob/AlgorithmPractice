//
//  Prime.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct Prime {
    static func prime(_ n:Int) -> Bool {
        if n < 2 {
            return false
        }
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}
