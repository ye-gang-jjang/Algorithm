import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 10), count: 101)
var sum: Int = 0

for i in 0...9 {
    dp[1][i] = 1
}

if N > 1 {
    for i in 2...N {
        for j in 0...9 {
            if j == 0 {
                dp[i][j] = dp[i-1][j+1] % 1000000000
            } else if j == 9 {
                dp[i][j] = dp[i-1][j-1] % 1000000000
            } else {
                dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % 1000000000
            }
        }
    }
}

for i in 1...9 {
    sum = (sum + dp[N][i]) % 1000000000
}

print(sum % 1000000000)