//
//  LCM.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct LCM {
    static func lcm(a:Int, b:Int) -> Int {
        let gcd = GCD.gcd(a: a, b: b)
        let lcm = (a * b) / gcd
        return lcm
    }
}

