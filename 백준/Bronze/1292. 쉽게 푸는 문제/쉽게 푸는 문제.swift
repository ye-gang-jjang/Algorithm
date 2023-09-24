import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let A = input[0], B = input[1]
var arr = [Int]()
var sum = 0

for i in 0..<1000 {
    for _ in 0...i {
        arr.append(i + 1)
    }
}

for i in (A-1)...(B-1) {
    sum += arr[i]
}

print(sum)