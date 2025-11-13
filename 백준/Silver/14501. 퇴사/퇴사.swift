import Foundation

let N = Int(readLine()!)!
var T = [Int](repeating: 0, count: N+1)
var P = [Int](repeating: 0, count: N+1)
var dp = [Int](repeating: 0, count: N+2)

for i in 1...N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    T[i] = input[0]
    P[i] = input[1]
}

for i in stride(from: N, through: 1, by: -1) {
    let next = i + T[i]
    
    if next <= N+1 {
        dp[i] = max(P[i] + dp[next], dp[i + 1])
    } else {
        dp[i] = dp[i+1]
    }
}

print(dp[1])