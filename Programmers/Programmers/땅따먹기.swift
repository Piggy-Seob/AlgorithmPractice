//
//  땅따먹기.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct 땅따먹기 {
    func solution(_ land:[[Int]]) -> Int{
        var copy = land
        
        for i in 1..<land.count {
            for j in 0..<4 {
                for k in 0..<4{
                    if j != k {
                        copy[i][j] = max(copy[i][j], copy[i-1][k] + land[i][j])
                    }
                }
            }
        }
        
        return copy.last!.max()!
    }
}

//[1,2,3,5] // 0,0 0,1 0,2 0,3
//[5,6,7,8] // 1,0 1,1 1,2 1,3
//[4,3,2,1] // 2,0 2,1, 2,2 2,3
