import Foundation

let s = Array(readLine()!.utf8)
let bomb = Array(readLine()!.utf8)
let m = bomb.count

var stack = [UInt8]()
stack.reserveCapacity(s.count)

for ch in s {
    stack.append(ch)
    
    if stack.count >= m {
        var isMatch = true
        for i in 0..<m {
            if stack[stack.count - m + i] != bomb[i] {
                isMatch = false
                break
            }
        }
        if isMatch {
            stack.removeLast(m)
        }
    }
}

if stack.isEmpty {
    print("FRULA")
} else {
    print(String(bytes: stack, encoding: .utf8)!)
}