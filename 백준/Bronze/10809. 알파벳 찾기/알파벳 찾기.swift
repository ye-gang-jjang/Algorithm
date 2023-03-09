import Foundation

let S = readLine()!
var arr: [Int] = Array(repeating: -1, count: 26)

for (index, value) in S.utf8.enumerated() {
    if arr[Int(value-97)] == -1 {
        arr[Int(value-97)] = index
    }
}

arr.forEach {
    print($0, terminator: " ")
}