import Foundation

var arr: [Int] = []

for _ in 1...9 {
    arr.append(Int(readLine()!)!)
}

let max = arr.max()!
let max_index = arr.firstIndex(of: max)!

print(max)
print(max_index+1)