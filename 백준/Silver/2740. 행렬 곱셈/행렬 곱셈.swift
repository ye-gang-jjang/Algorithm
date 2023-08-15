var A = [[Int]]()
var B = [[Int]]()

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0], M = NM[1]

for _ in 0..<N {
    A.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

let MK = readLine()!.split(separator: " ").map{ Int($0)! }
let K = MK[1]

for _ in 0..<M {
    B.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

var result = [[Int]](repeating: [Int](repeating: 0, count: K), count: N)

for c in 0..<M {
    for i in 0..<N {
        let r = A[i][c]
        
        for j in 0..<K {
            result[i][j] += r * B[c][j]
        }
    }
}

result.forEach { line in
    print(line.map { String($0) }.joined(separator: " "))
}