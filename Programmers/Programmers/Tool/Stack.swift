//
//  Stack.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct Stack<T> {
    private var array = [T]()
    
    func count() -> Int {
        return self.array.count
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    mutating func push(_ element:T) {
        self.array.append(element)
    }
    
    mutating func pop() -> T? {
        return self.array.popLast()
    }
}
