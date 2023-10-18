import Foundation

let NK = readLine()!.split(separator: " ").map{ Int($0)! }
var N = NK[0], K = NK[1] - 1

var arr = [[Int]]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(input)
}

var rank = 1

for i in 1..<N {
    if arr[i][0] > arr[K][0] {
        rank += 1
    } else if arr[i][0] == arr[K][0] && arr[i][1] > arr[K][1] {
        rank += 1
    } else if arr[i][0] == arr[K][0] && arr[i][1] == arr[K][1] && arr[i][2] > arr[K][2] {
        rank += 1
    }
}

print(rank)