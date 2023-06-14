import Foundation

func LCS(_ seq1: String, _ seq2: String) -> Int {
    let m = seq1.count
    let n = seq2.count
    
    let txt1Arr = Array(seq1)
    let txt2Arr = Array(seq2)
    
    var dp = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: m + 1)
        
        for i in 1...m {
            for j in 1...n {
                if txt1Arr[i - 1] == txt2Arr[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1] + 1
                } else {
                    dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
                }
            }
        }
        
        return dp[m][n]
}

let seq1 = readLine()!
let seq2 = readLine()!

let result = LCS(seq1, seq2)
print(result)