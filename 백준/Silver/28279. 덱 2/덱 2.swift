//
//  main.swift
//  28279
//
//  Created by yegang on 11/2/25.
//

import Foundation

let N = Int(readLine()!)!
var deque = Deque<Int>([])
var out = String()

for _ in 0..<N {
    let parts = readLine()!.split(separator: " ").map{ Int($0)! }
    let cmd = parts[0]
    
    switch cmd {
    case 1:
        let X = parts[1]; deque.pushFirst(X)
    case 2:
        let X = parts[1]; deque.pushLast(X)
    case 3:
        out += deque.isEmpty ? "-1\n" : "\(deque.popFirst())\n"
    case 4:
        out += deque.isEmpty ? "-1\n" : "\(deque.popLast())\n"
    case 5:
        out += "\(deque.count)\n"
    case 6:
        out += deque.isEmpty ? "1\n" : "0\n"
    case 7:
        out += "\( (try? deque.peekFirst()) ?? -1 )\n"
    case 8:
        out += "\( (try? deque.peekLast()) ?? -1 )\n"
        
    default:
        break
    }
}

print(out, terminator: " ")

enum DequeError: Error { case empty }

class Deque<T>{
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int { return enQueue.count + deQueue.count }
    
    var isEmpty: Bool { return enQueue.isEmpty && deQueue.isEmpty }
    
    init(_ queue: [T]) { enQueue = queue }
    
    func pushFirst(_ element: T) { deQueue.append(element) }
    
    func pushLast(_ element: T) { enQueue.append(element) }
    
    func popFirst() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
    
    func popLast() -> T {
        if enQueue.isEmpty {
            enQueue = deQueue.reversed()
            deQueue.removeAll()
        }
        return enQueue.popLast()!
    }
    
    func peekFirst() throws -> T {
        if !deQueue.isEmpty { return deQueue.last! }
        if !enQueue.isEmpty { return enQueue.first! }
        throw DequeError.empty
    }
    
    func peekLast() throws -> T {
        if !enQueue.isEmpty { return enQueue.last! }
        if !deQueue.isEmpty { return deQueue.first! }
        
        throw DequeError.empty
    }
}
