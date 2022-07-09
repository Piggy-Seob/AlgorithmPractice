//
//  신고결과받기.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/09.
//

import Foundation

class 신고결과받기 {
    func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        var reported: [String: [String]] = [:]
        var resultDic = [String: Int]()
        
        for i in Set(report) {
            let personArray = i.split(separator: " ").map{ String($0) }
            reported[personArray[0]] = (reported[personArray[0]] ?? []) + [personArray[1]] // 누가 누구를 리폿함
            resultDic[personArray[1]] = (resultDic[personArray[1]] ?? 0) + 1               // 몇번
        }
        
        return id_list.map { id in
            (reported[id] ?? []).reduce(0) {
                $0 + ((resultDic[$1] ?? 0) >= k ? 1 : 0)
            }
        }
    }
}
