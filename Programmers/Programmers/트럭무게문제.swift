//
//  트럭무게문제.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/06.
//

import Foundation

// length만큼 배열 만들기
// 1초 지날때 마다 하나씩 앞으로
// 배열안에 값이 없어질때까지 게속.
// 맨 마지막에 들어갈때 시간을 구한다 + 배열의 길이를 하면 될듯?

struct 트럭무게문제 {
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        var result: Int = 0
        var totalWeight: Int = 0
        var truckCount: Int = 0
        var bridge:[Int] = Array(repeating: 0, count: bridge_length)
        
        while truckCount != truck_weights.count {
            result += 1
            totalWeight -= bridge.removeFirst()
            
            if totalWeight + truck_weights[truckCount] <= weight {
                totalWeight = totalWeight +  truck_weights[truckCount]
                bridge.append(truck_weights[truckCount])
                truckCount += 1
                
            } else {
                bridge.append(0)
            }
        }
        
        return result + bridge_length
    }
}
