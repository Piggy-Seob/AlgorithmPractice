//
//  LCM.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct LCM {
    static func lcm(_ a:Int,_ b:Int) -> Int {
        let gcd = GCD.gcd(a, b)
        let lcm = (a * b) / gcd
        return lcm
    }
}

