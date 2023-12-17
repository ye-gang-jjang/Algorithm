import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, K) = (input[0], input[1])

var dp = Array(repeating: 100001, count: 100001)

if N < K {
    for i in 0..<N {
        dp[i] = N - i
    }

    dp[N] = 0

    for i in N+1...K {
        i % 2 == 0 ?
        (dp[i] = min(dp[i/2] + 1, dp[i-1] + 1)) :
        (dp[i] = min(dp[i-1] + 1, dp[(i+1)/2] + 2))
    }
}

print(N >= K ? (N - K) : dp[K])