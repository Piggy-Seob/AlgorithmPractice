//
//  피보나치.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation


struct 피보나치 {
    
    // recursive
//    func solution(_ n: Int) -> Int {
//        if n == 0 || n == 1 {
//            return n
//        }
//        let n = solution(n-1) + (solution(n-2))
//        return n
//    }
    
    // recursive Dynamic(top down)             // Call stack Depth Error 주의
//    func solution(_ n: Int) -> Int {
//        if n == 1 || n == 0 {
//            return n
//        }
//
//        var fiboArray = [0, 1]
//
//        if n < fiboArray.count {
//            return fiboArray[n]
//        }
//
//        let n = solution(n - 1) + solution(n - 2)
//        fiboArray.append(n)
//        return n
//    }
    
    // Dynamic with for loop(bottom up)
    func solution(_ n: Int) -> Int {
        if n == 1 || n == 0 {
            return n
        }
        var fiboArray:[Int] = [0, 1]
        
        for i in 2...n {
            fiboArray.append((fiboArray[i-1] + fiboArray[i-2]))
        }
        
        return fiboArray[n]
    }
}

