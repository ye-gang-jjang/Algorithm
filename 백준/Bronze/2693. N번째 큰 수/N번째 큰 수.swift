import Foundation

let T = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<T {
    arr.append(readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >))
}

for i in 0..<T {
    print(arr[i][2])
}