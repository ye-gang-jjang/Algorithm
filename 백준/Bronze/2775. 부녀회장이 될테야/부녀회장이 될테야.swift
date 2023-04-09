let T = Int(readLine()!)!
var aptArr = Array(repeating: Array(repeating: 1, count: 15), count: 15)

for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for idx in 1...n {
        aptArr[0][idx] = idx + 1
    }
    for idxK in 1...k {
        for idxN in 1...n {
            aptArr[idxK][idxN] = aptArr[idxK][idxN-1] + aptArr[idxK-1][idxN]
        }
    }
    print(aptArr[k][n-1])
}
