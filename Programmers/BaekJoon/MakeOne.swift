//
//  MakeOne.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct MakeOne {
    // dp의 인덱스 = N = i
    // dp[i] = 횟수
    
    func solution() -> Int{
        let n = Int(readLine()!)!
        var dp: [Int] = [0,0]
        if n == 1 {
            return(0)
        } else {
            for i in 2...n {
                dp.append(dp[i-1] + 1)
                if i % 2 == 0 && dp[i] > dp[i/2] + 1 {
                    dp[i] = dp[i/2] + 1
                }
                if i % 3 == 0 && dp[i] > dp[i/3] + 1 {
                    dp[i] = dp[i/3] + 1
                }
            }
            return(dp[n])
        }
    }
}
