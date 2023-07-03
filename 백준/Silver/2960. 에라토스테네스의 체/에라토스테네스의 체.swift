import Foundation

let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NK[0], K = NK[1]
var numArr = Array(repeating: true, count: N+1)
var cnt = 0

for i in 2...N {
    for j in stride(from: i, to: N+1, by: i) {
        if numArr[j] {
            numArr[j] = false
            cnt += 1
            
            if cnt == K {
                print(j)
                break
            }
        }
    }
}