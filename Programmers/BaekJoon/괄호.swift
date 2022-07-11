//
//  괄호.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/11.
//

import Foundation

struct 괄호 {
    var inputCount = Int(readLine()!)!
    var stack = [Bool]()
    
    mutating func solution() {
        for _ in 0..<inputCount {
            let input = readLine()!
            print(self.go(input))
        }
    }
    
    mutating func go(_ input:String) -> String {
        stack = []
        for i in input {
            if i == "(" {
                stack.append(true)
            }
            if i == ")" {
                if stack.last != nil {
                    stack.popLast()
                } else {
                    return "NO"
                }
            }
        }
        if stack.isEmpty {
            return "YES"
        } else {
            return "NO"
        }
    }
}
