import Foundation

let T = Int(readLine()!)!
var list = Array(repeating: 0, count: 11)
list[1] = 1; list[2] = 2; list[3] = 4

for i in 4...10 {
    list[i] = list[i-3] + list[i-2] + list[i-1]
}

for _ in 0..<T {
    let n = Int(readLine()!)!
    
    print(list[n])
}