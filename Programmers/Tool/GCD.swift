//
//  GCD.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct GCD {
    static  func gcd(_ a:Int,_ b:Int) -> Int {
        if b == 0 {
            return a
        }
        return gcd(b, a % b)
    }
    
//    var a = input[0]
//    var b = input[1]
//
//    while b != 0 {
//        let r = a % b
//        a = b
//        b = r
//    }
}
