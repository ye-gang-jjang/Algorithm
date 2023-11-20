import Foundation

let N = Int(readLine()!)!
var dict = [Int64: Int]()

for _ in 0..<N {
    let input = Int64(readLine()!)!
    
    dict[input, default: 0] += 1
}

let sortDict = dict.sorted { $0.key < $1.key }.max { $0.value < $1.value }

print(Int64(sortDict!.key))