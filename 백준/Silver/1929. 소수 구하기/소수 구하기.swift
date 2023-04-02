import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let M = input[0]
let N = input[1]

var arr = Array(repeating: 0, count: N+1)

for i in 2...N {
    arr[i] = i
}

for j in 2...N {
    if arr[j] == 0 { continue }
    
    for k in stride(from: j*2, through: N, by: j) {
        arr[k] = 0
    }
}

for idx in M...N {
    if arr[idx] != 0 {
        print(arr[idx])
    }
}