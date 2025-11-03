import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }

var deque: Deque<(Int, Int)> = Deque(zip(1...N, nums))
var result: [Int] = []

while !deque.isEmpty {
    let current = deque.popFirst()
    result.append(current.0)
    if deque.isEmpty { break }
    
    var move = current.1
    
    if move > 0 {
        move = (move - 1) % deque.count
        
        for _ in 0..<move {
            deque.pushLast(deque.popFirst())
        }
    } else {
        move = (-move) % deque.count
        for _ in 0..<move {
            deque.pushFirst(deque.popLast())
        }
    }
}

print(result.map(String.init).joined(separator: " "))

class Deque<T>{
    var enQueue: [T]
    var deQueue: [T] = []
    
    init(_ queue: [T]) { enQueue = queue }
    
    convenience init<S: Sequence>(_ s: S) where S.Element == T {
        self.init(Array(s))
    }
    
    var count: Int { return enQueue.count + deQueue.count }
    var isEmpty: Bool { return enQueue.isEmpty && deQueue.isEmpty }
    
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
}
