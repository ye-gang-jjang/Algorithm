import Foundation

let N = Int(readLine()!)!
var ropes = [Int]()
var result = 0

for _ in 0..<N {
    ropes.append(Int(readLine()!)!)
}
ropes.sort(by: >)

for i in 0..<N {
    result = max(result, ropes[i]*(i+1))
}

print(result)