let T = Int(readLine()!)!
var aptArr = Array(repeating: Array(repeating: 1, count: 15), count: 15)

for i in 1..<15 {
    aptArr[0][i] = i
}

for i in 1..<15 {
    for j in 2..<15 {
        aptArr[i][j] = aptArr[i][j-1] + aptArr[i-1][j]
    }
}

for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(aptArr[k][n])
}