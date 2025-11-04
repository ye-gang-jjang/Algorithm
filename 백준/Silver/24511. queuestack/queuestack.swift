import Foundation

let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map { Int($0)! }
var B = readLine()!.split(separator: " ").map { Int($0)! }
let M = Int(readLine()!)!
let C = readLine()!.split(separator: " ").map { Int($0)! }

var queue: [Int] = []
var head: Int = 0
var output: [Int] = []

for i in 0..<N {
    if A[i] == 0 {
        queue.append(B[i])
    }
}
queue.reverse()

for i in 0..<M {
    queue.append(C[i])
    output.append(queue[head])
    head += 1
}

print(output.map{ String($0) }.joined(separator: " "))