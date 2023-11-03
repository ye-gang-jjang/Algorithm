import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

for i in 1..<n {
    for j in 0..<i+1 {
        if j == 0 {
            arr[i][j] += arr[i-1][j]
        } else if j == i {
            arr[i][j] += arr[i-1][j-1]
        } else {
            arr[i][j] += max(arr[i-1][j], arr[i-1][j-1])
        }
    }
}

print(arr[n-1].max()!)