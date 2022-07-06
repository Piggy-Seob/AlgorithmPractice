//
//  정사각형넓이구하기.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/06.
//

import Foundation
//MARK:  DP
struct 가장큰정사각형넓이 {
    func solution(_ board:[[Int]]) -> Int {
        var maxValue:Int = 0
        var copyBoard = board
    
        if board.count == 1 || board.count == 0 {
            return 1
        }
    
        for i in 1..<board.count {
            for j in 1..<board[0].count {
                if board[i][j] == 1 {
                    copyBoard[i][j] = min(copyBoard[i-1][j-1], copyBoard[i-1][j], copyBoard[i][j-1]) + 1
                    maxValue = maxValue < copyBoard[i][j] ? copyBoard[i][j] : maxValue
                }
            }
        }
    
        return maxValue * maxValue
    }
    
}
