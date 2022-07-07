//
//  Queue.swift
//  Programmers
//
//  Created by 박진섭 on 2022/07/07.
//

import Foundation

struct Queue<T> {
    var array = [T]()
    private var head: Int = 0
    
    func count() -> Int{
        return self.array.count
    }
    
    func isEmpty() -> Bool {
        return self.array.isEmpty
    }
    
    mutating func push(_ element:T) {
        self.array.append(element)
    }
    
    mutating func pop() -> T? {
        if head == array.count {
            return nil
        }
        let element = array[head]
        
        head += 1
        print(head)
        if head > 5 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
    
}
