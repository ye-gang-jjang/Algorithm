import Foundation

var arr: [Bool] = Array(repeating: false, count: 42)

for _ in 1...10 {
    let input = Int(readLine()!)! % 42
    arr[input] = true
}

var check = 0
for i in 0..<42 {
    if arr[i] == true {
        check += 1
    }
}

print(check)