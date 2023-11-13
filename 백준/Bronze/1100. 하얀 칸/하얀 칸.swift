import Foundation

var arr = [[String]]()
var cnt = 0

for _ in 0..<8 {
    let input = readLine()!.map{ String($0) }
    arr.append(input)
}

for i in stride(from: 0, to: 8, by: 2) {
    for j in stride(from: 0, to: 8, by: 2) {
        if arr[i][j] == "F" {
            cnt += 1
        }
    }
}

for i in stride(from: 1, to: 8, by: 2) {
    for j in stride(from: 1, to: 8, by: 2) {
        if arr[i][j] == "F" {
            cnt += 1
        }
    }
}

print(cnt)